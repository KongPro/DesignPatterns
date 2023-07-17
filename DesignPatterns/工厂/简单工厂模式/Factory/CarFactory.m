//
//  CarFactory.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/15.
//

#import "CarFactory.h"
#import "Audi.h"
#import "BMW.h"
#import "Benz.h"

@implementation CarFactory

+ (Car *)factoryWithCarType:(CarType)type {
    Car *car = nil;
    switch (type) {
        case CarType_Audi:
            car = [[Audi alloc] init];
            break;
        case CarType_BMW:
            car = [[BMW alloc] init];
            break;
        case CarType_Benz:
            car = [[Benz alloc] init];
            break;
        default:
            break;
    }
    return car;
}

@end
