
#include<stdio.h>
#include<unistd.h>

void main()
{

	fork();
	fork();
	while(1)
	{
	printf("Hello world");
	}
}
