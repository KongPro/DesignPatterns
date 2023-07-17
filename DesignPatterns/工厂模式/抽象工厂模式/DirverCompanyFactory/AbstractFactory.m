//
//  DriverCompanyFactory.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/17.
//

#import "AbstractFactory.h"
#import "Car.h"
#import "Driver.h"

@implementation AbstractFactory

+ (Car *)productCar {
    Car *car = [[Car alloc] init];
    [car brandOfCar];
    [car run];
    return car;
}

+ (Driver *)employeeDriver {
    Driver *dirver = [[Driver alloc] init];
    [dirver drive];
    return dirver;
}


@end
