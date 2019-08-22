//
//  PlaceHolderVC.m
//  XTBase
//
//  Created by teason23 on 2019/8/22.
//  Copyright © 2019 teason23. All rights reserved.
//

#import "PlaceHolderVC.h"

#import "UICollectionView+XTPlaceHolder.h"


@interface PlaceHolderVC ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation PlaceHolderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIView *bgView = [UIView new] ;
    bgView.backgroundColor = [UIColor redColor] ;
    
    self.collectionView.customNoDataView = bgView ;
    
    
    [self.collectionView reloadData] ;
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
