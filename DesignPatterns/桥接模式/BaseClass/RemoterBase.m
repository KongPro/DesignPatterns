//
//  Remoter.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/15.
//

#import "RemoterBase.h"
#import "TVBase.h"

@implementation RemoterBase

- (void)makeCommand:(NSString *)command{
    [self.tv reciveCommand:command];
}

@end
