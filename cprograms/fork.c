#include<stdio.h>
#include<unistd.h>

void main()
{
	int pid1,pid2;
	printf("ABHI SAMJHA\n");
	pid1 = fork();
	pid2 = fork();

	printf("pid1 = %d\n",pid1);
	printf("pid2 = %d\n",pid2);

	if(pid1 == 0)
		printf("This is child\npid = %d\tppid = %d\n\n",getpid(),getppid());

	else if(pid2 == 0)
		printf("This is child\npid = %d\tppid = %d\n\n",getpid(),getppid());

	else
          	printf("This is  parent\npid = %d\tppid = %d\n\n",getpid(),getppid());
}
