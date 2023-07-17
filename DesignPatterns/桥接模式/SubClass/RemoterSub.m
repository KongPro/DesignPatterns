//
//  RemoterSub.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/15.
//

#import "RemoterSub.h"

@implementation RemoterSub

- (void)action_up{
    [super makeCommand:@"Up"];
}
- (void)action_down{
    [super makeCommand:@"Down"];
}
- (void)action_left{
    [super makeCommand:@"Left"];
}
- (void)action_right{
    [super makeCommand:@"Right"];
}

@end
