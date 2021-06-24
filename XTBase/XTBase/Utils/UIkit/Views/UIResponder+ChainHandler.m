//
//  UIResponder+ChainHandler.m
//  XTkit
//
//  Created by teason23 on 2017/10/23.
//  Copyright © 2017年 teason. All rights reserved.
//

#import "UIResponder+ChainHandler.h"


@implementation UIResponder (ChainHandler)

- (void)xt_messageOnChain:(NSString *)name
                 param:(NSDictionary *)param {
    [self.nextResponder xt_messageOnChain:name param:param];
}

- (UIResponder *)xt_findNext:(Class)cls {
    UIResponder *responder = self;
    while (responder != nil) {
        if ([responder isKindOfClass:cls]) {
            return responder;
        }
        responder = [responder nextResponder];
    }
    return nil;
}


@end
