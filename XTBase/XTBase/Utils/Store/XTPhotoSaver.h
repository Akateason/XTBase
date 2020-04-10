//
//  XTPhotoSaver.h
//  XTBase
//
//  Created by teason23 on 2020/4/10.
//  Copyright © 2020 teason23. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XTPhotoSaver : NSObject

- (void)saveImage:(UIImage *)image inAlbum:(NSString *)albumName ;

@end

NS_ASSUME_NONNULL_END
