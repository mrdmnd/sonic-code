from MidiFile import MIDIFile
import sys

def main(progpath, subspath):
  myMidifile = MIDIFile(1)
  track = 0
  time = 0
  myMidifile.addTrackName(track, time, "Programmatically Generated Sound")
  myMidifile.addTempo(track, time, 120)

  instructions_to_notes = {}
  subfile = open(subspath, "r")
  for line in subfile:
    print (line[:-1]).split(",")
    instruction, duration, opcode = (line[:-1]).split(",")
    instructions_to_notes[instruction] = ((int(opcode, 16) % 12)+69, int(duration))
  subfile.close()

  # Notes is a list of (pitch, duration) pairs
  notes = []
  progfile = open(progpath, "r")
  for line in progfile:
    tokens = line.split()
    if tokens:
      instr = tokens[0]
      if instr in instructions_to_notes:
        notes.append(instructions_to_notes[instr])
  progfile.close()
  
  channel = 0
  volume = 100
  time = 0
  for note in notes:
    pitch = note[0]
    duration = note[1]
    myMidifile.addNote(track, channel, pitch, time, duration, volume)
    time += duration
       
  binfile = open("output.mid", "wb")
  myMidifile.writeFile(binfile)
  binfile.close()


if __name__ == "__main__":
  # We expect two arguments - the first is the filepath and the second is the substitution argument.
  progpath = sys.argv[1]
  subspath = sys.argv[2]
  main(progpath, subspath)
