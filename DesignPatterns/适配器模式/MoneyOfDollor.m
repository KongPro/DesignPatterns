//
//  MoneyOfDollor.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/23.
//

#import "MoneyOfDollor.h"

@interface MoneyOfDollor ()

@property (nonatomic, assign)CGFloat balance;

@end

@implementation MoneyOfDollor

- (CGFloat)setDollor:(CGFloat)count {
    NSLog(@"存储美元：$%0.2lf", count);
    self.balance += count;
    return count;
}

- (CGFloat)getDollor {
    NSLog(@"获取美元：$%0.2lf", self.balance);
    return self.balance;
}

@end
