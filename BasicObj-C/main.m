//
//  main.m
//  BasicObj-C
//
//  Created by Dmitrii Diadiushkin on 07.12.2020.
//

#import <Foundation/Foundation.h>

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

typedef enum {
    sum = '+',
    difference = '-',
    multiplication = '*',
    division = '/',
} Action;

typedef enum {
    male = 'M',
    female = 'F'
} Gender;

typedef struct {
    __unsafe_unretained NSString *name;
    NSInteger age;
    Gender sex;
} Human;

int main(int argc, const char * argv[]) {
    
    //Task 1:
    NSArray *stringArray = [NSArray arrayWithObjects: @"One", @"Two", @"Three", @"Four", nil];
    
    for (NSString *element in stringArray) {
        NSLog(@"%@", element);
    }
    
    //Task 2:
    int a = 0;
    int b = 0;

    Action act;

    printf("Enter the first number: ");
    scanf("%d", &a);
    printf("Enter action (+, -, *, /): ");
    scanf(" %c", &act);
    printf("Enter the second number: ");
    scanf("%d", &b);
    switch (act) {
        case sum:
            calcSum(a, b);
            break;
        case difference:
            calcDif(a, b);
            break;
        case multiplication:
            calcMult(a, b);
            break;
        case division:
            calcDiv(a, b);
            break;
        default:
            printf("You've entered wrong action.\n");
            break;
    }
    
    //Task 3:
    Human mike = { .name = @"Mike", .age = 20, .sex = male };
    Human lilly = { .name = @"Lilly", .age = 43, .sex = female };
    Human swen = { .name = @"Swen", .age = 16, .sex = male };
    
    NSLog(@"%@, %d, %c", mike.name, mike.age, mike.sex);
    NSLog(@"%@, %d, %c", lilly.name, lilly.age, lilly.sex);
    NSLog(@"%@, %d, %c", swen.name, swen.age, swen.sex);
    
    return 0;
}
