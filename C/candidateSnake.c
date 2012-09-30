// headers
static int isValid(int *snake, int n);

//C code
#include <stdio.h>
#include <time.h>

#define nbCubelet 25

static int isValid(int *snake, int n){
	int i,test;

	test=1;
	for(i=0; i<n-1; i++){
		if(snake[i]==1 && snake[i+1]==1) {test=0;}
	}
	return test;
}

int main(){
	time_t  time0, time1;						// time_t is defined in <time.h> as long
	clock_t clock0, clock1;						// clock_t is defined in <time.h> as int
	int c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25;		// all cubelets (E excepted) C=0 S=1; must be equal to nbCubelet
	int snake[nbCubelet], valid[nbCubelet];		// candidate snake, and associated variables
	int nbSnake, nbCandidate;					// objectives: {total nb of snakes, nb of snakes with no 2 consecutive S}
	int i;

	time0 = time(NULL);
	clock0 = clock();

	nbSnake=0;
	nbCandidate=0;
	for(i=0; i<nbCubelet; i++){valid[i]=0;}
	for(i=0; i<nbCubelet; i++){snake[i]=0;}
	
	for(c1=0; c1<=1; c1++){snake[0]=c1; valid[0]=1;
	for(c2=0; c2<2; c2++){snake[1]=c2; valid[1]=isValid(snake,2); if(valid[1]==1){
	for(c3=0; c3<2; c3++){snake[2]=c3; valid[2]=isValid(snake,3); if(valid[2]==1){
	for(c4=0; c4<2; c4++){snake[3]=c4; valid[3]=isValid(snake,4); if(valid[3]==1){
	for(c5=0; c5<2; c5++){snake[4]=c5; valid[4]=isValid(snake,5); if(valid[4]==1){
	for(c6=0; c6<2; c6++){snake[5]=c6; valid[5]=isValid(snake,6); if(valid[5]==1){
	for(c7=0; c7<2; c7++){snake[6]=c7; valid[6]=isValid(snake,7); if(valid[6]==1){
	for(c8=0; c8<2; c8++){snake[7]=c8; valid[7]=isValid(snake,8); if(valid[7]==1){
	for(c9=0; c9<2; c9++){snake[8]=c9; valid[8]=isValid(snake,9); if(valid[8]==1){
	for(c10=0; c10<2; c10++){snake[9]=c10; valid[9]=isValid(snake,10); if(valid[9]==1){
	for(c11=0; c11<2; c11++){snake[10]=c11; valid[10]=isValid(snake,11); if(valid[10]==1){
	for(c12=0; c12<2; c12++){snake[11]=c12; valid[11]=isValid(snake,12); if(valid[11]==1){
	for(c13=0; c13<2; c13++){snake[12]=c13; valid[12]=isValid(snake,13); if(valid[12]==1){
	for(c14=0; c14<2; c14++){snake[13]=c14; valid[13]=isValid(snake,14); if(valid[13]==1){
	for(c15=0; c15<2; c15++){snake[14]=c15; valid[14]=isValid(snake,15); if(valid[14]==1){
	for(c16=0; c16<2; c16++){snake[15]=c16; valid[15]=isValid(snake,16); if(valid[15]==1){
	for(c17=0; c17<2; c17++){snake[16]=c17; valid[16]=isValid(snake,17); if(valid[16]==1){
	for(c18=0; c18<2; c18++){snake[17]=c18; valid[17]=isValid(snake,18); if(valid[17]==1){
	for(c19=0; c19<2; c19++){snake[18]=c19; valid[18]=isValid(snake,19); if(valid[18]==1){
	for(c20=0; c20<2; c20++){snake[19]=c20; valid[19]=isValid(snake,20); if(valid[19]==1){
	for(c21=0; c21<2; c21++){snake[20]=c21; valid[20]=isValid(snake,21); if(valid[20]==1){
	for(c22=0; c22<2; c22++){snake[21]=c22; valid[21]=isValid(snake,22); if(valid[21]==1){
	for(c23=0; c23<2; c23++){snake[22]=c23; valid[22]=isValid(snake,23); if(valid[22]==1){
	for(c24=0; c24<2; c24++){snake[23]=c24; valid[23]=isValid(snake,24); if(valid[23]==1){
	for(c25=0; c25<2; c25++){snake[24]=c25; valid[24]=isValid(snake,25); if(valid[24]==1){
		nbCandidate++;
		if(nbCandidate%10000==0){
			printf("\tCandidate snake [%d] = ",nbCandidate);
			for(i=0; i<nbCubelet; i++){
				if(snake[i]==1){printf("S");}else{printf("C");}
			}
			printf("\n");
		}
	}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}

	printf("\tThe number of candidate snakes (i.e. with no 2 consecutive S) is = %d\n", (int)(nbCandidate/2));

	time1 = time(NULL);
	clock1 = clock();
	printf("\t\tclock time (s) =\t%ld\n", (long)(time1 - time0));
	printf("\t\tCPU time (s) =\t%f\n", (float)(clock1 - clock0)/CLOCKS_PER_SEC);

	return 0;
}


/*output
gcc -Wall -g -O3 candidateSnake.c -o candidateSnake
time -p ./candidateSnake
--------------
	The number of candidate snakes (i.e. with no 2 consecutive S) is = 98209
		clock time (s) =	0
		CPU time (s) =	0.036529
real 0.04
user 0.03
sys 0.00


*/

