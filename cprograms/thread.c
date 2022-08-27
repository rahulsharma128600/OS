#include<stdio.h>
#include<unistd.h>
#include<pthread.h>

pthread_t th1, th2;
void editor()
{
	pthread_join(th2, NULL);
	int i=1;
	for( ; i<5 ;i++ )
	{
		printf("Editor runs thId = %ld\n", pthread_self());
		sleep(2);
	}
}

void spellchecker()
{
	int j=1;
	for( ; j<5; j++)
	{
		printf("Spellchecker runs thId = %ld\n", pthread_self());
		sleep(2);
	}
}

void main()
{
	/* single thread model editor runs first finishes then spellchecker runs and finishes
	editor();
	spellchecker();*/

	/* multi thread model */
	//pthread_t th1, th2;
	int i;
	pthread_create(&th1, NULL, (void*)editor, NULL);
	pthread_create(&th2, NULL, (void*)spellchecker, NULL);
       
        pthread_join(th1,NULL);
	for(i=1; i<5; i++)
	{
		printf("Main runs and its threadId = %ld\nith1Id = %ld and th2Id = %ld\n",pthread_self(),th1,th2);
		sleep(2);
	}
}
