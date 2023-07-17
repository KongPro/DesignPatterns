//
//  BenzFactory.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/16.
//

#import "BenzFactoryMethod.h"
#import "Benz.h"

@implementation BenzFactoryMethod

+ (Benz *)productionCar {
    Benz *benz = [[Benz alloc] init];
    return benz;
}

@end
