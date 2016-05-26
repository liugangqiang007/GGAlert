//
//  UIAlertView+GGActionBlock.h
//  GGAlertAction
//
//  Created by LGQ on 16/5/26.
//  Copyright © 2016年 LGQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (GGActionBlock)

- (void)gg_showWithActionBlock:(void (^)(NSInteger buttonIndex))actionBlock;

@end
