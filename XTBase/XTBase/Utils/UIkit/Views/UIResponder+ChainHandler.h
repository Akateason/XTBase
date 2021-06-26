//
//  UIResponder+ChainHandler.h
//  XTkit
//
//  Created by teason23 on 2017/10/23.
//  Copyright © 2017年 teason. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIResponder (ChainHandler)

- (void)xt_messageOnChain:(NSString *)name param:(NSDictionary *)param;

- (UIResponder *)xt_findNext:(Class)cls ;

@end
