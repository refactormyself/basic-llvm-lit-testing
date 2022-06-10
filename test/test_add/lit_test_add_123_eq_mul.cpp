// This is a very simple test using lit
// We are testing if 1+2+3 == 1*2*3

// The test is configured in CMAke to depend on the binaroes, so they would have been compiled
// We use the substiions to refer to them. We are onlu compiling this file
 
// RUN: g++ %s -o %t
// RUN: (%add123 && %t) | grep "66"

#include <stdio.h>

int main() {
  printf("%i", 1*2*3);
  return 0;
}