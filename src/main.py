import random
from MidiFile import MIDIFile
import sys

def main(progpath, subspath):
  myMidifile = MIDIFile(1)
  track = 0
  time = 0
  myMidifile.addTrackName(track, time, "Programmatically Generated Sound")
  myMidifile.addTempo(track, time, 70)

  subs = {}
  subfile = open(subspath, "r")
  for line in subfile:
    instruction, pitch = line.split(",")
    subs[instruction] = int(pitch[:-1])
  subfile.close()

  pitches = []
  progfile = open(progpath, "r")
  for line in progfile:
    tokens = line.split()
    if tokens:
      instr = tokens[0]
      if instr in subs:
        pitches.append(subs[instr])
  progfile.close()
  # TODO: Markov chain generation of duration?
  # Current: duration in beats --> probability
  notation = {"W":1.0, "H":0.5, "Q":0.25, "DQ":1.5*0.25, "E":0.125, "DE":1.5*0.125}
  
  # join_prob matches (prev, cur) tuples to a probability distribution over durations
  joint_prob = {
      ("W", "W"):   {"W": 0.7, "H": 0.2, "Q": 0.1, "DQ": 0, "E": 0, "DE": 0},
      ("W", "H"):   {"W": 0.6, "H": 0.3, "Q": 0.1, "DQ": 0, "E": 0, "DE": 0},
      ("W", "Q"):   {"W": 0.3, "H": 0.2, "Q": 0.5, "DQ": 0, "E": 0, "DE": 0}, 
      ("W", "DQ"):  {"W": 0, "H": 0, "Q": 0.1, "DQ": 0.7, "E": 0.1, "DE": 0.1}, 
      ("W", "E"):   {"W": 0, "H": 0.1, "Q": 0.3, "DQ": 0, "E": 0.6, "DE": 0}, 
      ("W", "DE"):  {"W": 0, "H": 0, "Q": 0, "DQ": 0, "E": 0.1, "DE": 0.9},
      ("H", "W"):   {"W": 0.4, "H": 0.4, "Q": 0.2, "DQ": 0, "E": 0, "DE": 0},
      ("H", "H"):   {"W": 0.2, "H": 0.4, "Q": 0.2, "DQ": 0, "E": 0.2, "DE": 0 },
      ("H", "Q"):   {"W": 0, "H": 0.4, "Q": 0.6, "DQ": 0, "E": 0, "DE": 0}, 
      ("H", "DQ"):  {"W": 0, "H": 0.2, "Q": 0.4, "DQ": 0.4, "E": 0, "DE": 0}, 
      ("H", "E"):   {"W": 0.1, "H": 0.1, "Q": 0.1, "DQ": 0.2, "E": 0.2, "DE": 0.3}, 
      ("H", "DE"):  {"W": 0, "H": 0, "Q": 0.2, "DQ": 0.3, "E": 0.1, "DE": 0.4},
      ("Q", "W"):   {"W": 0.2, "H": 0.3, "Q": 0.5, "DQ": 0, "E": 0, "DE": 0},
      ("Q", "H"):   {"W": 0.2, "H": 0.1, "Q": 0.7, "DQ": 0, "E": 0, "DE": 0},
      ("Q", "Q"):   {"W": 0, "H": 0, "Q": 0.7, "DQ": 0.1, "E": 0.2, "DE": 0}, 
      ("Q", "DQ"):  {"W": 0, "H": 0, "Q": 0.2, "DQ": 0.8, "E": 0, "DE": 0}, 
      ("Q", "E"):   {"W": 0, "H": 0, "Q": 0.4, "DQ": 0, "E": 0.6, "DE": 0}, 
      ("Q", "DE"):  {"W": 0, "H": 0, "Q": 0.4, "DQ": 0, "E": 0, "DE": 0.6}, 
      ("DQ", "W"):  {"W": 0, "H": 0.4, "Q": 0.4, "DQ": 0.2, "E": 0, "DE": 0},
      ("DQ", "H"):  {"W": 0.4, "H": 0.2, "Q": 0.2, "DQ": 0.2, "E": 0, "DE": 0},
      ("DQ", "Q"):  {"W": 0, "H": 0, "Q": 0.8, "DQ": 0.2, "E": 0, "DE": 0}, 
      ("DQ", "DQ"): {"W": 0, "H": 0.2, "Q": 0.6, "DQ": 0, "E": 0.2, "DE": 0}, 
      ("DQ", "E"):  {"W": 0, "H": 0, "Q": 0, "DQ": 0, "E": 0.9, "DE": 0.1}, 
      ("DQ", "DE"): {"W": 0, "H": 0, "Q": 0, "DQ": 0, "E": 0.1, "DE": 0.9}, 
      ("E", "W"):   {"W": 0.5, "H": 0.3, "Q": 0.2, "DQ": 0, "E": 0, "DE": 0},
      ("E", "H"):   {"W": 0, "H": 0.6, "Q": 0.3, "DQ": 0, "E": 0.1, "DE": 0},
      ("E", "Q"):   {"W": 0, "H": 0, "Q": 0.2, "DQ": 0.3, "E": 0.3, "DE": 0.2}, 
      ("E", "DQ"):  {"W": 0, "H": 0, "Q": 0, "DQ": 0.3, "E": 0.7, "DE": 0}, 
      ("E", "E"):   {"W": 0.1, "H": 0.4, "Q": 0.3, "DQ": 0, "E": 0.2, "DE": 0}, 
      ("E", "DE"):  {"W": 0, "H": 0, "Q": 0, "DQ": 0, "E": 0.2, "DE": 0.8}, 
      ("DE", "W"):  {"W": 0, "H": 0.2, "Q": 0.3, "DQ": 0, "E": 0.4, "DE": 0.1},
      ("DE", "H"):  {"W": 0.3, "H": 0.2, "Q": 0.1, "DQ": 0, "E": 0.2, "DE": 0.2},
      ("DE", "Q"):  {"W": 0, "H": 0, "Q": 0.6, "DQ": 0, "E": 0.4, "DE": 0}, 
      ("DE", "DQ"): {"W": 0, "H": 0, "Q": 0, "DQ": 0.3, "E": 0, "DE": 0.7}, 
      ("DE", "E"):  {"W": 0, "H": 0, "Q": 0, "DQ": 0, "E": 0.9, "DE": 0.1}, 
      ("DE", "DE"): {"W": 0, "H": 0, "Q": 0.4, "DQ": 0.6, "E": 0, "DE": 0} 
      
      }

  def get_next_duration((prev, cur)):
    # Returns an element taken from the probability distribution conditioned on |t_{i} = cur, t_{i-1} = prev
    probdist = joint_prob[(prev, cur)]
    if not probdist:
      raise Exception("OH GOD IT BROKE")
    else:
      r = random.random()
      total = 0
      for value, prob in probdist.items():
        total += prob
        if total > r:
          return value

  channel = 0
  volume = 100
  time = 0
  prev = "W"
  cur = "W"
  for pitch in pitches:
    duration = get_next_duration((prev, cur))
    
    is_note = random.random()
    if is_note < 0.8:
      myMidifile.addNote(track, channel, pitch, time, notation[duration], volume)
    time += notation[duration]
    prev = cur
    cur = duration
       
  binfile = open("output.mid", "wb")
  myMidifile.writeFile(binfile)
  binfile.close()


if __name__ == "__main__":
  # We expect two arguments - the first is the filepath and the second is the substitution argument.
  progpath = sys.argv[1]
  subspath = sys.argv[2]
  main(progpath, subspath)
