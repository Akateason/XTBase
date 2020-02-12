//
//  AppDelegate.m
//  XTBase
//
//  Created by teason23 on 2018/11/16.
//  Copyright © 2018 teason23. All rights reserved.
//

#import "AppDelegate.h"
#import "XTlibConfig.h"

#import "XTBase.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    [[XTlibConfig sharedInstance] defaultConfiguration];

    
    
    xt_LOG_INFO(@"22222");
    xt_LOG_DEBUG(@"33333");
    
    
    return YES;
}



@end
