// Lab 7 Starter Code.
#include <stdio.h>
#define SIZE 10

int sum(double *x, double *y, double *ans)
{
	*ans = *x + *y;
	if (*x == *y)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

void initialize(double *z)
{
        int i;
        for (i=0; i<SIZE; i++)
		{
            *(z+i)=i * i;
        }
}

void print(double z[])
{
        int i;
        for (i=0; i<SIZE; i++)
		{
			printf("z[%d]=%f\n",i, *(z+i));
        }
}

int main()
{
	double x = 5, y = 10, z[SIZE], ans;
	
	int i;
	x++;
	y--;
	
	for(;;)
	{
		if(sum(&x, &y, &ans))
		{
			printf("x is equal to y and their sum is:%f\n", ans);
			break;
		}
		else
		{
			printf("x is not equal to y, their sum is:%f\n", ans);
		}
		x++;
	}
	
	initialize( &z[0]);
	print( &z[0] );

	return 0;
}