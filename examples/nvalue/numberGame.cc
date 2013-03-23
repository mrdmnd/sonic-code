#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <map>

typedef struct {
  int a;
  int b;
  int c;
  int d;
} state_t;



void mutateStep(state_t* game) {
  // Modifies the attributes of state pointed to by game
  int w = abs(game->a - game->b);
  int x = abs(game->b - game->c);
  int y = abs(game->c - game->d);
  int z = abs(game->d - game->a);
  game->a = w;
  game->b = x;
  game->c = y;
  game->d = z;
  return;
}

inline bool isTerminalState(state_t* game) {
  if (game->a != 0) return false;
  if (game->b != 0) return false;
  if (game->c != 0) return false;
  if (game->d != 0) return false;
  return true;
}

int pathLength(state_t* game) {
  // Warning! We overwrite the attributes of game.
  int count = 0;
  while(!isTerminalState(game)) {
    mutateStep(game);
    ++count;
  }
  return count;
}

int main(int argc, char** argv) {
  std::map<int, long> distribution;

  int i, j, k, l;
  int maxNum = atoi(argv[1]);
  int len = 0;
  state_t item;
  for(i = 0; i < maxNum; ++i) {
    for(j = 0; j < maxNum; ++j) {
      for(k = 0; k < maxNum; ++k) {
        for(l = 0; l < maxNum; ++l) {
          item.a = i; item.b = j; item.c = k; item.d = l;
          len = pathLength(&item);
          std::map<int, long>::const_iterator it = distribution.find(len);
          if(it == distribution.end()) {
            distribution[len] = 1;
          }
          else {
            distribution[len] += 1;
          }
        }
      }
    }
  }

  for(std::map<int, long>::iterator it = distribution.begin(); it != distribution.end(); it++) {
    printf("%d -> %ld\n", it->first, it->second);
  }
}
