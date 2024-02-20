#include <stdio.h>
#include <math.h>

#define TERMOS 100

int main()
{
  int i;
  double pi = 0;

  for (i = 0; i < TERMOS; i++)
    pi += pow(-i, i) / (2 * i + 1);
  pi *= 4;

  printf("O valor aproximado de Pi é: %f\n", pi);
  return (0);
}