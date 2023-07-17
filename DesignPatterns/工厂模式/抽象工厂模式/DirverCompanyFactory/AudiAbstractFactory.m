//
//  AudiEmployeeFactory.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/17.
//

#import "AudiAbstractFactory.h"
#import "Audi.h"
#import "AudiDriver.h"

@implementation AudiAbstractFactory

+ (Car *)productCar {
    Audi *audi = [[Audi alloc] init];
    [audi brandOfCar];
    [audi run];
    return audi;
}

+ (Driver *)employeeDriver {
    AudiDriver *audiDriver = [[AudiDriver alloc] init];
    [audiDriver drive];
    return audiDriver;
}

@end
