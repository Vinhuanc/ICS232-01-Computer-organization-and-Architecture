//Cindy Chen 5/27/23
//Write a simple C program to sum the entries in an array and print out the sum and the
//average. The following may be used as a template:

#include <stdio.h>
#include <math.h>
#include <string.h>
void calcArray(int array[], size_t size){
    int sum = 0;
    for(int i = 0; i<size; i++){
        sum += array[i];
    }
    float avg = sum/size;
    printf("Sum: %d\n", sum);
    printf("Average:: %.2f \n", avg);

}
int main() {
    int myNumbers[] = {25, 50, 75, 100};
    calcArray(myNumbers, sizeof(myNumbers)/sizeof(myNumbers[0]));

}
