//
//  FactoryMethodViewController.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/16.
//

#import "FactoryMethodViewController.h"
#import "AudiFactoryMethod.h"
#import "BMWFactoryMethod.h"
#import "BenzFactoryMethod.h"
#import "Audi.h"
#import "BMW.h"
#import "Benz.h"

@interface FactoryMethodViewController ()

@end

@implementation FactoryMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Audi *audi = (Audi *)[AudiFactoryMethod productionCar];
    [audi brandOfCar];
    [audi colorOfAudi];
    [audi run];
    
    Car *bmw = [BMWFactoryMethod productionCar];
    [bmw brandOfCar];
    [bmw run];
    
    Car *benz = [BenzFactoryMethod productionCar];
    [benz brandOfCar];
    [benz run];
    
    
    /**
     在工厂方法模式中，核心的工厂类不再负责所有产品的创建，而是将具体创建工作交给子类去做。
     这个核心类仅仅负责给出具体工厂必须实现的接口，而不负责产品类被实例化这种细节。
     这使得工厂方法模式可以允许系统在不修改工厂角色的情况下引进新产品。
     
     优点：
     1. 一个调用者想创建一个对象，只要知道其名称就可以了。
     2. 扩展性高，如果想增加一个产品，只要扩展一个工厂类就可以。
     3. 屏蔽产品的具体实现，调用者只关心产品的接口。
     
     缺点：
     每次增加一个产品时，都需要增加一个具体类和对象实现工厂，使得系统中类的个数成倍增加，在一定程度上增加了系统的复杂度。
     同时也增加了系统具体类的依赖。这并不是什么好事。
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
