//
//  Remoter.h
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/15.
//

#import <Foundation/Foundation.h>
@class TVBase;

NS_ASSUME_NONNULL_BEGIN

@interface RemoterBase : NSObject

@property (nonatomic, strong)TVBase * tv;

// 操作指令
- (void)makeCommand:(NSString *)command;


@end

NS_ASSUME_NONNULL_END
