#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int getCard() {
    return (rand() % 13) + 1;
}

int calcHand(int *hand, int numCards) {
    int value = 0;
    int aceCount = 0;
    
    for (int i = 0; i < numCards; i++) {
        if (hand[i] >= 2 && hand[i] <= 10) {
            value += hand[i];
        } else if (hand[i] >= 11 && hand[i] <= 13) {
            value += 10;
        } else if (hand[i] == 1) {
            value += 11;
            aceCount++;
        }
    }
    
    while (value > 21 && aceCount > 0) {
        value -= 10;
        aceCount--;
    }
    
    return value;
}

int main() {
    srand(1111);  // Seed the random number generator
    
    int hands[10000][10];
    int handValues[10000];
    int handCounts[6] = {0};
    
    for (int i = 0; i < 10000; i++) {
        int numCards = 0;
        hands[i][numCards++] = getCard();
        hands[i][numCards++] = getCard();
        
        while (calcHand(hands[i], numCards) < 17) {
            hands[i][numCards++] = getCard();
        }
        
        handValues[i] = calcHand(hands[i], numCards);
        
        if (handValues[i] >= 17 && handValues[i] <= 21) {
            handCounts[handValues[i] - 17]++;
        } else {
            handCounts[5]++;
        }
    }
    
    for (int i = 0; i < 5; i++) {
        printf("%d: ", i+1);
        for (int j = 0; j < 10; j++) {
            printf("%d ", hands[i][j]);
        }
        printf("Value %d\n", handValues[i]);
    }
    
    printf("...\n");
    
    for (int i = 9995; i < 10000; i++) {
        printf("%d: ", i+1);
        for (int j = 0; j < 10; j++) {
            printf("%d ", hands[i][j]);
        }
        printf("Value %d\n", handValues[i]);
    }
    
    printf("\n");
    printf("hand 17 occurred %d times\n", handCounts[0]);
    printf("hand 18 occurred %d times\n", handCounts[1]);
    printf("hand 19 occurred %d times\n", handCounts[2]);
    printf("hand 20 occurred %d times\n", handCounts[3]);
    printf("hand 21 occurred %d times\n", handCounts[4]);
    printf("hand 22+ occurred %d times\n", handCounts[5]);
    
    return 0;
}
