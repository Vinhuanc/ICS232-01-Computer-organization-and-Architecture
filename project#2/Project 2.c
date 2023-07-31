/* Project 2 */
/* 10/5/2022 */

/* GCC */
/* gcc -Wa,-adhln -g -masm=intel -m32 "Project 2.c" > "Project 2-g.asm" */
/* gcc -Wa,-adhln -O -masm=intel -m32 "Project 2.c" > "Project 2-o.asm" */

#include <stdio.h>

#define NOINLINE __attribute__ ((noinline))
// stack
static NOINLINE int function1(int x, int y)
{

	int i;
	int sum;
	int values[10];
	
	sum = 0;
	for (i = 0; i < 10; i++) {
		values[i] = 10 + i + 2 * x * y;
		sum += values[i];
	}

	return (sum);
	
}

static int NOINLINE function2(int *values, int valuesLen)
{

	int i;
	int sum1;
	int sum2;
	int v;

	sum1 = 0;
	sum2 = 0;
	for (i = 0; i < valuesLen; i++) {
		v = values[i];
		if (v > 0)
			sum1 += v;
		else
			sum2 += v;
	}

	return (sum1 + sum2);
	
}

static NOINLINE int function3(int x)
{

	int y;

	y = x / 20;
	
	return (y);
	
}

static NOINLINE int function4(int a, int b, int c, int d)
{

	int r;

	if (a > b)
		r = b;
	else if (a > c)
		r = 4 * a;
	else if (a > d)
		r = 8 * a;
	else
		r = -1;
	
	return (r);
	
}

static NOINLINE unsigned int function5(unsigned int x)
{

	unsigned int x1;
	unsigned int x2;
	unsigned int x3;
	
	x1 = x * 16;
	x2 = x / 8;
	x3 = x % 8;
	
	return (x1 + x2 + x3);
	
}

int main(int argc, char **argv)
{

	int i;
	int j;
	int k;
	int values[10];

	i = 5;
	j = 8;
	k = function1(i, j);
	printf("function1: i = %d, j = %d, k = %d\n", i, j, k);

	for (i = 0; i < 10; i++) {
		values[i] = i;
	}
	k = function2(values, 10);
	printf("function2: k = %d\n", k);

	k = function3(100);
	printf("function3: k = %d\n", k);

	k = function4(1, 2, 3, 4);
	printf("function4: k = %d\n", k);
	
	k = function5(100);
	printf("function5: k = %d\n", k);

	return (0);
}
