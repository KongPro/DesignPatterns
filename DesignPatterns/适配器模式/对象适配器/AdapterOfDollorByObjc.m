//
//  AdapterOfDollorByObjc.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/23.
//

#import "AdapterOfDollorByObjc.h"

@interface AdapterOfDollorByObjc ()

@property (nonatomic, strong)MoneyOfDollor * dollor;

@end

@implementation AdapterOfDollorByObjc

- (instancetype)initWithDollor:(MoneyOfDollor *)dollor {
    if (self = [super init]) {
        _dollor = dollor;
    }
    return self;
}

// 实现协议
- (CGFloat)getRMBFromDollor {
    CGFloat dollor = [self.dollor getDollor];
    CGFloat rmb = dollor * 7.1878;
    NSLog(@"兑换：$%0.2lf <=> ￥%0.2lf", dollor, rmb);
    return rmb;
}
@end
