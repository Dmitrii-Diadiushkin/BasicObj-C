//
//  main.m
//  BasicObj-C
//
//  Created by Dmitrii Diadiushkin on 07.12.2020.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int first = 0;
    int second = 0;
    printf("Enter first integer number: ");
    scanf("%d", &first);
    printf("Enter second integer number: ");
    scanf("%d", &second);
    printf("%d + %d = %d\n", first, second, first + second);
    printf("%d - %d = %d\n", first, second, first - second);
    printf("%d * %d = %d\n", first, second, first * second);
    printf("%d / %d = %f\n", first, second, (double)first / (double)second);
    int third = 0;
    
    printf("\nCalculating averege value of 3.\n");
    printf("Enter first integer number: ");
    scanf("%d", &first);
    printf("Enter second integer number: ");
    scanf("%d", &second);
    printf("Enter third integer number: ");
    scanf("%d", &third);
    printf("The averege value of entered numbers is %f\n", ((double)first + (double)second + (double)third) / 3);
    return 0;
}
