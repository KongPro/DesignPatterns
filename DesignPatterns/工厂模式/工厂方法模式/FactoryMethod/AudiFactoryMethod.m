//
//  AudiFactory.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/16.
//

#import "AudiFactoryMethod.h"
#import "Audi.h"

@implementation AudiFactoryMethod

+ (Audi *)productionCar {
    Audi *audi = [[Audi alloc] init];
    return audi;
}

@end
