//
//  ObserverViewController.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/26.
//

#import "ObserverViewController.h"
#import "ObserverCenter.h"

@interface ObserverViewController () <ObserverProtocol>

@end

@implementation ObserverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    NSLog(@"创建订阅号");
    // 新建订阅号
    [[ObserverCenter share] addSubject:@"123"];
    
    NSLog(@"订阅中...");
    // 订阅
    [[ObserverCenter share] addObserverWith:self token:@"123"];
    
    NSLog(@"订阅内容更新中...");
    [NSThread sleepForTimeInterval:2.f];
    // 更新订阅内容
    [[ObserverCenter share] sendSubjectMessage:@"更新订阅内容" subjectToken:@"123"];
    
    NSLog(@"取消订阅");
    // 移除订阅者
    [[ObserverCenter share] removeObserverWith:self token:@"123"];
    
    NSLog(@"移除订阅号");
    // 移除订阅号
    [[ObserverCenter share] removeSubject:@"123"];
    
}

- (void)subscribeMessage:(id)message subscribeToken:(NSString *)token {
    NSLog(@"-----------------------");
    NSLog(@"%@", message);
    NSLog(@"-----------------------");
}


@end
