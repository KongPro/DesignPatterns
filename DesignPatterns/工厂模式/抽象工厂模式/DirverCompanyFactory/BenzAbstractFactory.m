//
//  BenzEmployeeFactory.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/17.
//

#import "BenzAbstractFactory.h"
#import "Benz.h"
#import "BenzDriver.h"

@implementation BenzAbstractFactory

+ (Car *)productCar {
    Benz *benz = [[Benz alloc] init];
    [benz brandOfCar];
    [benz run];
    return benz;
}

+ (Driver *)employeeDriver {
    BenzDriver *benzDriver = [[BenzDriver alloc] init];
    [benzDriver drive];
    return benzDriver;
}

@end
