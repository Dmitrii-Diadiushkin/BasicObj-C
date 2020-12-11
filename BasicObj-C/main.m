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

void calcSum(int a, int b) {
    printf("Summ of %d and %d is %d\n", a, b, a + b);
}

void calcDif(int a, int b) {
    printf("Difference of %d and %d is %d\n", a, b, a - b);
}

void calcMult(int a, int b) {
    printf("Composition of %d and %d is %d\n", a, b, a * b);
}

void calcDiv(int a, int b) {
    printf("Division of %d and %d is %f\n", a, b, (double)a / (double)b);
}

int main(int argc, const char * argv[]) {
    
    //Task 1:
//    char charToCheck[40];
//    printf("Enter a char to check (will be checked the first char if you enter a string): ");
//    scanf("%39s", charToCheck);
//    NSString * charToCheckStr = [NSString stringWithUTF8String:charToCheck];
//    checkChar(charToCheckStr);
    
    //Task 2:
    int a = 0;
    int b = 0;
    char action[10];
    
    printf("Enter the first number: ");
    scanf("%d", &a);
    printf("Enter action (+, -, *, /): ");
    scanf("%9s", action);
    printf("Enter the second number: ");
    scanf("%d", &b);
    switch (action[0]) {
        case '+':
            calcSum(a, b);
            break;
        case '-':
            calcDif(a, b);
            break;
        case '*':
            calcMult(a, b);
            break;
        case '/':
            calcDiv(a, b);
            break;
        default:
            printf("You've entered wrong action.\n");
            break;
    }
    
    return 0;
}
