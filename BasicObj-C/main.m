//
//  main.m
//  BasicObj-C
//
//  Created by Dmitrii Diadiushkin on 07.12.2020.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    
    Student *student1 = [[Student alloc] initWithfirstName: @"John" lastName:@"Silver" age:20];

    NSLog(@"%d", student1.age);
    
    [student1 inceaseAge];
    
    NSLog(@"%@", student1.description);
    
    NSLog(@"%d", student1.age);
    
    return 0;
}
