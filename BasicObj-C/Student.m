//
//  Student.m
//  BasicObj-C
//
//  Created by Dmitrii Diadiushkin on 21.12.2020.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithfirstName:(NSString *)firstName
                 lastName:(NSString *)lastName
                              age:(int)age
{
    
    self = [super init];
    
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _fullName = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
        _age = age;
    }
    return self;
}

-(void)inceaseAge {
    _age = _age + 1;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"\nFirst name: %@\nLast name: %@\nFull name: %@\nAge: %d", _firstName, _lastName, _fullName, _age];
}

@end
