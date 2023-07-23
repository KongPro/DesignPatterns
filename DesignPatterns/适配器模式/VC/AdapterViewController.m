//
//  AdapterViewController.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/23.
//

#import "AdapterViewController.h"

#import "AdapterOfDollor.h" // 适配器模式 - 类适配器
#import "AdapterOfDollorByObjc.h"   // 适配器模式 - 对象适配器

@interface AdapterViewController ()

@end

@implementation AdapterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    //适配器模式 - 类适配器
    NSLog(@"----- 类适配器 -----");
    AdapterOfDollor *adapterOfDollor = [[AdapterOfDollor alloc] init];
    [adapterOfDollor setDollor:1000];
    [adapterOfDollor getRMBFromDollor];
        
    // 适配器模式 - 对象适配器
    NSLog(@"\n");
    NSLog(@"----- 对象适配器 -----");
    MoneyOfDollor *dollor = [[MoneyOfDollor alloc] init];
    [dollor setDollor:888];
    AdapterOfDollorByObjc *adapterByObjc = [[AdapterOfDollorByObjc alloc] initWithDollor:dollor];
    [adapterByObjc getRMBFromDollor];
    
}

@end
