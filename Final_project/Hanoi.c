#include <stdio.h>

void Hanoi(int n,char a,char b,char c){

	if(n==1){
		printf("move %d from %c to %c\n",n,a,c);
	}
	else{
		Hanoi(n-1,a,c,b);
		printf("move %d from %c to %c\n",n,a,c);//move from a to c
		Hanoi(n-1,b,a,c);	
	}	
}

int main(){
	int n=3;
	char a='A',b='B',c='C';
	
   	Hanoi(n,a,b,c);
    
    return 0;
}

