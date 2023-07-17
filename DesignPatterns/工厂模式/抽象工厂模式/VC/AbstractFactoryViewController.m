//
//  AbstractFactoryViewController.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/17.
//

#import "AbstractFactoryViewController.h"
#import "AudiAbstractFactory.h"
#import "BMWAbstractFactory.h"
#import "BenzAbstractFactory.h"
#import "Audi.h"
#import "AudiDriver.h"

@interface AbstractFactoryViewController ()

@end

@implementation AbstractFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [AudiAbstractFactory productCar];
    [AudiAbstractFactory employeeDriver];
    
    [BMWAbstractFactory productCar];
    [BMWAbstractFactory employeeDriver];
    
    [BenzAbstractFactory productCar];
    [BenzAbstractFactory employeeDriver];
    
}
@end
