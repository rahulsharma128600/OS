#include<stdio.h>
#include<unistd.h>

void main()
{
	fork();
	fork();
	printf("Test having getpid = %d and getppid = %d\n",getpid(),getppid());
}	
