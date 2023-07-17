//
//  CarFactory.h
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/16.
//

#import <Foundation/Foundation.h>
@class Car;

NS_ASSUME_NONNULL_BEGIN

@interface CarFactoryMethod : NSObject

+ (Car *)productionCar;

@end

NS_ASSUME_NONNULL_END
