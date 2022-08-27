#include<stdio.h>
#include<unistd.h>
void main()
{
	int i, c, a=0, b=1, pid;
	pid = fork();
	printf("PID = %d\n",pid);

	if(pid>0)
	{
		
		printf("This is parent\npid = %d\t ppid = %d\n",getpid(),getppid());
		for(i=1; i<=1000; i++)
		{
            		printf("%d * %d = %d\n",2, i, 2*i);
		}
	}	
	else
	{
		printf("This is child\npid = %d\t ppid = %d\n",getpid(),getppid());
		do
		{
			c = a+b;
			a = b;
			b = c;
			printf("\n%d",c);
		}while(c<=1000);			
	}	
}
