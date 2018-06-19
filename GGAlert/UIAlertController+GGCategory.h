//
//  UIAlertController+GGCategory.h
//  GGAlertAction
//
//  Created by LGQ on 2018/6/19.
//  Copyright © 2018年 LGQ. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 ios 8 以上使用 UIAlertController 显示 alert 和 ActionSheet
 */
@interface UIAlertController (GGCategory)

- (void)addActionWithTitle:(nullable NSString *)title
                     style:(UIAlertActionStyle)style
                   handler:(void (^ __nullable)(UIAlertAction *action))handler;

@end


@interface UIViewController (GGUIAlertController)

- (UIAlertController *)showAlertWithTitle:(nullable NSString *)title
                                  message:(nullable NSString *)message
                           preferredStyle:(UIAlertControllerStyle)preferredStyle;

@end
