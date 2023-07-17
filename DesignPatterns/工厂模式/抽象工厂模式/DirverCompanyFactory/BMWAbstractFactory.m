//
//  BMWEmployeeFactory.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/17.
//

#import "BMWAbstractFactory.h"
#import "BMW.h"
#import "BMWDriver.h"

@implementation BMWAbstractFactory

+ (Car *)productCar {
    BMW *bmw = [[BMW alloc] init];
    [bmw brandOfCar];
    [bmw run];
    return bmw;
}

+ (Driver *)employeeDriver {
    BMWDriver *bmwDriver = [[BMWDriver alloc] init];
    [bmwDriver drive];
    return bmwDriver;
}

@end
