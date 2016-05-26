//
//  GGAlert.m
//  GGAlertAction
//
//  Created by LGQ on 16/5/25.
//  Copyright © 2016年 LGQ. All rights reserved.
//

#import "GGAlert.h"
#import "UIAlertView+GGActionBlock.h"
#import "UIActionSheet+GGActionBlock.h"

@implementation GGAlert

+ (void)gg_showAlertViewWithTitle:(NSString *)title
                          message:(NSString *)message
               clickedButtonBlock:(void (^)(NSInteger))block
                cancelButtonTitle:(NSString *)cancelButtonTitle
                otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    
    NSMutableArray<NSString *> *otherTitles = [[NSMutableArray alloc] init];
    [otherTitles addObject:otherButtonTitles];
    
    NSString * arg;
    va_list argList;
    if (otherButtonTitles) {
        va_start(argList, otherButtonTitles);
        while ((arg = va_arg(argList, NSString *))) {
            [otherTitles addObject:arg];
        }
        va_end(argList);
    }
    
    if (otherTitles.count > 6) {
        [self titleBeyondBoundsTip];
        return;
    }
    NSString *title1 = otherTitles.count > 0 ? otherTitles[0] : nil;
    NSString *title2 = otherTitles.count > 1 ? otherTitles[1] : nil;
    NSString *title3 = otherTitles.count > 2 ? otherTitles[2] : nil;
    NSString *title4 = otherTitles.count > 3 ? otherTitles[3] : nil;
    NSString *title5 = otherTitles.count > 4 ? otherTitles[4] : nil;
    NSString *title6 = otherTitles.count > 5 ? otherTitles[5] : nil;
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:cancelButtonTitle otherButtonTitles:title1, title2, title3, title4, title5, title6, nil];
    
    [alertView gg_showWithActionBlock:^(NSInteger buttonIndex) {
        if (block) {
            block(buttonIndex);
        }
    }];
}

+ (void)gg_showActionSheetInView:(UIView *)view
                           title:(nullable NSString *)title
              clickedButtonBlock:(void (^)(NSInteger buttonIndex))block
               cancelButtonTitle:(nullable NSString *)cancelButtonTitle
          destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
               otherButtonTitles:(nullable NSString *)otherButtonTitles, ...
{
    NSMutableArray<NSString *> *otherTitles = [[NSMutableArray alloc] init];
    [otherTitles addObject:otherButtonTitles];
    
    NSString * arg;
    va_list argList;
    if (otherButtonTitles) {
        va_start(argList, otherButtonTitles);
        while ((arg = va_arg(argList, NSString *))) {
            [otherTitles addObject:arg];
        }
        va_end(argList);
    }
    if (otherTitles.count > 6) {
        [self titleBeyondBoundsTip];
        return;
    }
    NSString *title1 = otherTitles.count > 0 ? otherTitles[0] : nil;
    NSString *title2 = otherTitles.count > 1 ? otherTitles[1] : nil;
    NSString *title3 = otherTitles.count > 2 ? otherTitles[2] : nil;
    NSString *title4 = otherTitles.count > 3 ? otherTitles[3] : nil;
    NSString *title5 = otherTitles.count > 4 ? otherTitles[4] : nil;
    NSString *title6 = otherTitles.count > 5 ? otherTitles[5] : nil;
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:title delegate:nil cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:title1, title2, title3, title4, title5, title6, nil];
    
    [actionSheet gg_showInView:view actionBlock:^(NSInteger buttonIndex) {
        if (block) {
            block(buttonIndex);
        }
    }];
}

+ (void)titleBeyondBoundsTip { // 按钮超出6个后提示
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"UIAlertView按钮过多,请修改源码" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
    [alertView show];
}






@end
