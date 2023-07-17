//
//  RemoterSub.h
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/15.
//

#import "RemoterBase.h"


NS_ASSUME_NONNULL_BEGIN

@interface RemoterSub : RemoterBase

- (void)action_up;
- (void)action_down;
- (void)action_left;
- (void)action_right;

@end

NS_ASSUME_NONNULL_END
