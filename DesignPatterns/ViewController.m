//
//  ViewController.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/15.
//

#import "ViewController.h"
#import "BridgeViewController.h"    // 桥接模式
#import "SimpleFactoryViewController.h" // 简单工厂模式
#import "FactoryMethodViewController.h" // 工厂方法模式
#import "AbstractFactoryViewController.h"   // 抽象方法模式

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
//    桥接模式
//    BridgeViewController *bridge = [[BridgeViewController alloc] init];
//    [self.navigationController pushViewController:bridge animated:YES];
    
//    简单工厂模式
//    SimpleFactoryViewController *simFactory = [[SimpleFactoryViewController alloc] init];
//    [self.navigationController pushViewController:simFactory animated:YES];
    
//    工厂方法
//    FactoryMethodViewController *factoryMethod = [[FactoryMethodViewController alloc] init];
//    [self.navigationController pushViewController:factoryMethod animated:YES];
    
//    抽象方法模式
    AbstractFactoryViewController *abstract = [[AbstractFactoryViewController alloc] init];
    [self.navigationController pushViewController:abstract animated:YES];
    
}


@end
