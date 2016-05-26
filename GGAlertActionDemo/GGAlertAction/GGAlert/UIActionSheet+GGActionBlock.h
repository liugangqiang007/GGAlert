//
//  UIActionSheet+GGActionBlock.h
//  GGAlertAction
//
//  Created by LGQ on 16/5/26.
//  Copyright © 2016年 LGQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIActionSheet (GGActionBlock)

- (void)gg_showInView:(UIView *)view actionBlock:(void (^)(NSInteger buttonIndex))actionBlock;

@end
