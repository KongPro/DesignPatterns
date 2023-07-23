//
//  AdapterOfDollorByObjc.h
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/23.
//

#import <Foundation/Foundation.h>
#import "MoneyProtocol.h"
#import "MoneyOfDollor.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdapterOfDollorByObjc : NSObject <MoneyProtocol>

- (instancetype)initWithDollor:(MoneyOfDollor *)dollor;


@end

NS_ASSUME_NONNULL_END
