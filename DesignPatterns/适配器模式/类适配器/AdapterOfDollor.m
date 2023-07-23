//
//  AdapterOfDollor.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/23.
//

#import "AdapterOfDollor.h"

@implementation AdapterOfDollor

// 实现协议
- (CGFloat)getRMBFromDollor {
    CGFloat dollor = [self getDollor];
    CGFloat rmb = dollor * 7.1878;
    NSLog(@"兑换：$%0.2lf <=> ￥%0.2lf", dollor, rmb);
    return rmb;
}

@end
