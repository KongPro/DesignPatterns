//
//  CarFactory.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/16.
//

#import "CarFactoryMethod.h"
#import "Car.h"

@implementation CarFactoryMethod

+ (Car *)productionCar {
    return [[Car alloc] init];
}

@end
