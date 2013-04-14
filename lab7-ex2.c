#include<stdio.h>
#include<string.h>

void mystrcat(char *s,const char *t)
{
	//get pointer to s
	char *d = s;
	//while the value of d is not null
	while(*d)
	{
		++d;
	}
	//add the string values of t to d while both are not null
	while((*d++ = *t++) != '\0');
}

int main()
{
	char a[] = "Hello ";
	char *b = "World";
	
	mystrcat(a,b);
	
	printf("%s\r\n",a);
	return 0;
}