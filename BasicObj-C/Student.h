//
//  Student.h
//  BasicObj-C
//
//  Created by Dmitrii Diadiushkin on 21.12.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, strong) NSString * firstName;
@property (nonatomic, strong) NSString * lastName;
@property (nonatomic, strong) NSString * fullName;
@property (nonatomic, readonly) int age;

- (instancetype)initWithfirstName:(NSString *)firstName
                 lastName:(NSString *)lastName
                              age:(int)age;

-(void)inceaseAge;

@end

NS_ASSUME_NONNULL_END
