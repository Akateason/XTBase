//
//  ViewController.m
//  XTBase
//
//  Created by teason23 on 2018/11/16.
//  Copyright © 2018 teason23. All rights reserved.
//

#import "ViewController.h"
#import "XTBase/header/XTBase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSLog(@"ipx serious %d",XT_IS_IPHONE_X) ;
    
    UIButton *bt = [UIButton new] ;
    [bt setTitle:@"11" forState:0] ;
    bt.backgroundColor = [UIColor redColor] ;
    [self.view addSubview:bt] ;
    [bt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 40)) ;
        make.right.equalTo(self.view) ;
        make.bottom.equalTo(self.view) ;
    }] ;
    
    [[bt rac_signalForControlEvents:(UIControlEventTouchUpInside)] subscribeNext:^(__kindof UIControl * _Nullable x) {
        
        [UIAlertController xt_showAlertCntrollerWithAlertControllerStyle:(UIAlertControllerStyleActionSheet) title:nil message:nil cancelButtonTitle:@"cancel" destructiveButtonTitle:nil otherButtonTitles:@[@"1",@"2"] fromWithView:bt CallBackBlock:^(NSInteger btnIndex) {
            
        }] ;
        
    }] ;
    
    
    

    

    
}


@end
