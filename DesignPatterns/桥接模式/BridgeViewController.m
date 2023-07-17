//
//  BridgeViewController.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/15.
//

#import "BridgeViewController.h"
#import "RemoterSub.h"
#import "TVSubOne.h"
#import "TVSubTwo.h"

@interface BridgeViewController ()

@end

@implementation BridgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor systemOrangeColor];
    
    TVSubOne *oneTV = [[TVSubOne alloc] init];
    TVSubTwo *twoTV = [[TVSubTwo alloc] init];
    
    
    RemoterSub *remoter = [[RemoterSub alloc] init];
    remoter.tv = oneTV;
    [remoter action_up];
    [remoter action_down];
    [remoter action_left];
    [remoter action_right];
    
    remoter.tv = twoTV;
    [remoter action_up];
    [remoter action_down];
    [remoter action_left];
    [remoter action_right];
    
}

@end
