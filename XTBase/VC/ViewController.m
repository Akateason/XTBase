//
//  ViewController.m
//  XTBase
//
//  Created by teason23 on 2018/11/16.
//  Copyright © 2018 teason23. All rights reserved.
//

#import "ViewController.h"
#import "XTBase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XTPhotoSaver *saver = [XTPhotoSaver new];
    [saver saveImage:[UIImage imageNamed:@"kobe"] inAlbum:@"科比"];
}


@end
   

