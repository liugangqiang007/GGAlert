//
//  UIAlertController+GGCategory.m
//  GGAlertAction
//
//  Created by LGQ on 2018/6/19.
//  Copyright © 2018年 LGQ. All rights reserved.
//

#import "UIAlertController+GGCategory.h"

@implementation UIAlertController (GGCategory)

- (void)addActionWithTitle:(nullable NSString *)title
                     style:(UIAlertActionStyle)style
                   handler:(void (^ __nullable)(UIAlertAction *action))handler {
    
    [self addAction:[UIAlertAction actionWithTitle:title style:style handler:handler]];
}

@end

@implementation UIViewController (GGUIAlertController)

- (UIAlertController *)showAlertWithTitle:(nullable NSString *)title
                                  message:(nullable NSString *)message
                           preferredStyle:(UIAlertControllerStyle)preferredStyle {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                             message:message
                                                                      preferredStyle:preferredStyle];
    [self presentViewController:alertController animated:YES completion:nil];
    
    return alertController;
}


@end
