#include <stdio.h>

int wowow(int x, int y) { return x + y * x * y * 1234; }

int main() {
  printf("test\n");
  int nice = wowow(13, 122);
}
