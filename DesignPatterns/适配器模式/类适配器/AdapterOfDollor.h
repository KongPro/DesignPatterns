//
//  AdapterOfDollor.h
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/23.
//

#import "MoneyOfDollor.h"
#import "MoneyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdapterOfDollor : MoneyOfDollor <MoneyProtocol>

@end

NS_ASSUME_NONNULL_END
