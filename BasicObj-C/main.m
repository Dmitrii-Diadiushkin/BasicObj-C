//
//  main.m
//  BasicObj-C
//
//  Created by Dmitrii Diadiushkin on 07.12.2020.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    int first = 0;
    int second = 0;
    printf("Enter first integer number: ");
    scanf("%d", &first);
    printf("Enter second integer number: ");
    scanf("%d", &second);
    printf("%d + %d = %d", first, second, first + second);
    return 0;
}
