//
//  CarFactory.h
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/15.
//

#import <Foundation/Foundation.h>
@class Car;

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    CarType_Audi,
    CarType_Benz,
    CarType_BMW,
} CarType;

@interface CarFactory : NSObject

+ (Car *)factoryWithCarType:(CarType)type;

@end

NS_ASSUME_NONNULL_END
