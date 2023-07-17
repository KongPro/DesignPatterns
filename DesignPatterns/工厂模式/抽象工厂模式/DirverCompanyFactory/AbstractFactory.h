//
//  DriverCompanyFactory.h
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/17.
//

#import <Foundation/Foundation.h>
//@class Car;
//@class Driver;
#import "Car.h"
#import "Driver.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractFactory : NSObject

+ (Car *)productCar;
+ (Driver *)employeeDriver;

@end

NS_ASSUME_NONNULL_END
