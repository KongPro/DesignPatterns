//
//  BMWFactory.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/16.
//

#import "BMWFactoryMethod.h"
#import "BMW.h"

@implementation BMWFactoryMethod

+ (BMW *)productionCar {
    BMW *bmw = [[BMW alloc] init];
    return bmw;
}

@end
