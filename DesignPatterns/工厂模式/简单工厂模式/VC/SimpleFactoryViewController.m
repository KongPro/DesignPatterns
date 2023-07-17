//
//  SimpleFactoryViewController.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/15.
//

#import "SimpleFactoryViewController.h"
#import "CarFactory.h"
#import "Car.h"
#import "Audi.h"

@interface SimpleFactoryViewController ()

@end

@implementation SimpleFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Car *car = [CarFactory factoryWithCarType:CarType_Benz];
    [car brandOfCar];
    [car run];
    
    Audi *audi = (Audi *)[CarFactory factoryWithCarType:CarType_Audi];
    [audi brandOfCar];
    [audi colorOfAudi];
    [audi run];
    
    /**
     工厂模式缺点：（针对此例说明）
        假如用户需要「卡迪拉克」，那么首先
        1. 创建「凯迪拉克」类
        2. 在 CarFactory 的 switch 语句中增加一个 case，这显然违反了「开闭原则」
     */
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
