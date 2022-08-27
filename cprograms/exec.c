#include<stdio.h>
#include<unistd.h>

void main()
{
	printf("Hi wlecome\n pid = %d and ppid = %d\n",getpid(),getppid());
	sleep(2);	
	printf("Bye\npid = %d, and ppid = %d\n",getpid(),getppid());
	execl("/bin/ls","ls", NULL);
	printf("Bye\npid = %d, and ppid = %d\n",getpid(),getppid());
}	
