//
//  UITextView+XT.m
//  XTBase
//
//  Created by teason23 on 2019/3/14.
//  Copyright © 2019 teason23. All rights reserved.
//

#import "UITextView+XT.h"

@implementation UITextView (XT)

- (CGRect)xt_frameOfTextRange:(NSRange)range {
    UITextPosition *beginning = self.beginningOfDocument;
    UITextPosition *start = [self positionFromPosition:beginning offset:range.location];
    UITextPosition *end = [self positionFromPosition:start offset:range.length];
    UITextRange *textRange = [self textRangeFromPosition:start toPosition:end];
    CGRect rect = [self firstRectForRange:textRange];
    return [self convertRect:rect fromView:self.textInputView];
}

@end
