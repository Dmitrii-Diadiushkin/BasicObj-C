//
//  main.m
//  BasicObj-C
//
//  Created by Dmitrii Diadiushkin on 07.12.2020.
//

#import <Foundation/Foundation.h>

void checkChar (NSString *enteredValue) {
    NSString * alfEng = @"AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz";
    
    if ([alfEng containsString: [enteredValue substringToIndex:1]]) {
        printf("Contains\n");
    } else {
        printf("Not contains\n");
    }
}

int calcSum(int a, int b) {
    return a + b;
}

int calcDif(int a, int b) {
    return a - b;
}

int calcMult(int a, int b) {
    return a * b;
}

int calcDiv(int a, int b) {
    return (double)a / (double)b;
}

int main(int argc, const char * argv[]) {
    
    //Task 1:
//    char charToCheck[40];
//    printf("Enter a char to check (will be checked the first char if you enter a string): ");
//    scanf("%39s", charToCheck);
//    NSString * charToCheckStr = [NSString stringWithUTF8String:charToCheck];
//    checkChar(charToCheckStr);
    
    //Task 2:
    int a, b;
    char action[10];
    
    printf("%f", (double)(5/2));
    
    printf("Enter the first number: ");
    scanf("%d", &a);
    printf("Enter action (+, -, *, /): ");
    scanf("%9s", action);
    printf("Enter the second number: ");
    scanf("%d", &b);
    switch (action[0]) {
        case '+':
            printf("Summ of %d and %d is %d\n", a, b, calcSum(a, b));
            break;
        case '-':
            printf("Difference of %d and %d is %d\n", a, b, calcDif(a, b));
            break;
        case '*':
            printf("Composition of %d and %d is %d\n", a, b, calcMult(a, b));
            break;
        case '/':
            printf("Division of %d and %d is %f\n", a, b, (double)calcDiv(a, b));
            break;
        default:
            printf("You've entered wrong action.");
            break;
    }
    
    return 0;
}
