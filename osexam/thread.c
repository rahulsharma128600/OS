#include<stdio.h>
#include<unistd.h>
#include<pthread.h>

void thread()
{
	int i=1;
	for( ; i<=100; i++)
	{
		printf("Hello World \n");
//		sleep(1);
	}
}

void main()
{
	pthread_t th;

	pthread_create(&th, NULL, (void*)thread, NULL);

	thread();

        pthread_join(th, NULL);

	printf("Goodbye..");
}
