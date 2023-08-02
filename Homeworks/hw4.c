
#include <stdio.h>

int findMax(int array[], size_t size){
   int max = array[0];
   for(int i = 1; i<size; i++){
       if(array[i] > max){
           max = array[i];
       }
   }
   printf("Max number: %d\n", max);
   return max;
}

int countOdd(int array[], size_t size){
   int count = 0;
   for(int i = 0; i<size; i++){
       if(array[i] % 2 !=0){
           count += array[i];
       }
   }
   printf("Total count: %d\n", count);
   return count;

}
int main() {
       static int array1[] = {1, -1, 100, 32, 64, -97};
       static int array2[] = {-100, 1, -10, 50, -40, 98, 110};
    
       findMax(array1, sizeof(array1) / sizeof(array1[0]));
       findMax(array2, sizeof(array2) / sizeof(array2[0]));
    
       countOdd(array1,sizeof(array1) / sizeof(array1[0]) );
       countOdd(array2,sizeof(array2) / sizeof(array2[0]) );
    


}