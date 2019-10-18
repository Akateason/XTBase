//
//  ImageDoVC.m
//  XTBase
//
//  Created by teason23 on 2019/10/17.
//  Copyright © 2019 teason23. All rights reserved.
//

#import "ImageDoVC.h"
#import <UIKit/UIKit.h>
#import "XTBase.h"
#import "UIAlertController+XTAddition.h"
#import "UIImage+XT.h"


@interface ImageDoVC ()
@property (weak, nonatomic) IBOutlet UIImageView *imageOrigin;
@property (weak, nonatomic) IBOutlet UIImageView *imageResult;

@end

@implementation ImageDoVC

- (IBAction)btOnClick:(id)sender {
    NSArray *titles = @[
    @"切圆角",
    @"改变方向",
    @"裁剪正方形",
    @"加入水印",
    @"缩略图",
    @"等比缩放size",
    @"等比缩放wid",
    @"xt_getImageWithColor",
    @"xt_imageWithTintColor",
    @"xt_imageWithGradientTintColor",
    @"xt_imageWithTintColor blendMode",
    @"blur",
    @"box blur",
    ] ;
    
    
    
    [UIAlertController xt_showAlertCntrollerWithAlertControllerStyle:(UIAlertControllerStyleActionSheet) title:@"操作图片" message:nil cancelButtonTitle:@"cancel" destructiveButtonTitle:nil otherButtonTitles:titles callBackBlock:^(NSInteger btnIndex) {
        
        switch (btnIndex) {
            case 1://@"切圆角",
            {
                UIImage *imgSquare = [self.imageOrigin.image xt_makeSquareImageScaledToSize:128] ;
                self.imageResult.image = [imgSquare xt_cutImageWithCircleWithBorderWidth:2 borderColor:[UIColor redColor]] ;
            }
                break;
                
            case 2://@"改变方向",
                self.imageResult.image = [self.imageOrigin.image xt_changeImageRotation:(UIImageOrientationDown)] ;
                break;
                
            case 3://@"裁剪正方形",
                self.imageResult.image = [self.imageOrigin.image xt_makeSquareImageScaledToSize:128] ;
                break ;
                
            case 4:// 加入水印
                self.imageResult.image = [self.imageOrigin.image xt_imageWithWaterMask:[UIImage imageNamed:@"test"] inRect:CGRectMake(300, 100, 150, 150)] ;
                break ;
                
            case 5:// 缩略图
                self.imageResult.image = [self.imageOrigin.image xt_thumbnailWithSize:CGSizeMake(30, 30)] ;
                break ;
            case 6://等比缩放 size
                self.imageResult.image = [self.imageOrigin.image xt_imageCompressWithTargetSize:CGSizeMake(100, 100)] ;
                break;
            case 7://等比缩放 wid
                self.imageResult.image = [self.imageOrigin.image xt_imageCompressWithTargetWidth:40] ;
                break;
            case 8://xt_imageWithColor
                self.imageResult.image = [UIImage xt_getImageWithColor:[UIColor redColor] size:CGSizeMake(100, 100)] ;
                break ;
            case 9://xt_imageWithTintColor
                self.imageResult.image = [self.imageOrigin.image xt_imageWithTintColor:[UIColor redColor]] ;
                break ;
            case 10://xt_imageWithGradientTintColor
                self.imageResult.image = [self.imageOrigin.image xt_imageWithGradientTintColor:[UIColor redColor]] ;
                break ;
            case 11://xt_imageWithTintColor blendMode
                self.imageResult.image = [self.imageOrigin.image xt_imageWithTintColor:[UIColor redColor] blendMode:(kCGBlendModeOverlay)] ;
                break ;
            case 12://blur
                self.imageResult.image = [self.imageOrigin.image xt_blur] ;
                break ;
            case 13://box blur
                self.imageResult.image = [self.imageOrigin.image xt_boxblurImageWithBlur:3] ;
                break ;
                
            default:
                break;
        }
        
        
        
    }] ;
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
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
