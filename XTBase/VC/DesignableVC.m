//
//  DesignableVC.m
//  XTBase
//
//  Created by teason23 on 2019/8/16.
//  Copyright © 2019 teason23. All rights reserved.
//

#import "DesignableVC.h"
#import "XTBase.h"
#import <XTTable/XTTable.h>
#import <XTTable/XTCollection.h>

@interface DesignableVC ()
@property (copy, nonatomic) NSArray *dataList ;
@end

@implementation DesignableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *bgView = [UIView new] ;
    bgView.backgroundColor = [UIColor redColor] ;
    
    self.table.customNoDataView = bgView ;
    self.table.defaultNoDataViewDidClickBlock = ^(UIView *view) {
        NSLog(@"click") ;
        
        self.dataList = @[@"1",@"234234"] ;
        [self.table reloadData] ;
    } ;
   
    [self.table xt_setup] ;
    self.table.dataSource = self.table.delegate = self.table.xt_Delegate = self ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"] ;
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"cell"] ;
    }
    cell.textLabel.text = self.dataList[indexPath.row] ;
    return cell ;
}

- (void)tableView:(UITableView *)table loadNew:(void (^)(void))endRefresh {
    self.dataList = @[] ;
    endRefresh() ;
}





@end
