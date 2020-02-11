//
//  AppDelegate.m
//  XTBase
//
//  Created by teason23 on 2018/11/16.
//  Copyright © 2018 teason23. All rights reserved.
//

#import "AppDelegate.h"


#import "XTBase.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    [[XTlibConfig sharedInstance] defaultConfiguration];
    
    
    return YES;
}



@end
