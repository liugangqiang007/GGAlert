//
//  GGAlert.h
//  GGAlertAction
//
//  Created by LGQ on 16/5/25.
//  Copyright © 2016年 LGQ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GGAlert : NSObject

+ (void)gg_showAlertViewWithTitle:(nullable NSString *)title
                       message:(nullable NSString *)message
            clickedButtonBlock:(void (^)(NSInteger buttonIndex))block
             cancelButtonTitle:(nullable NSString *)cancelButtonTitle
             otherButtonTitles:(nullable NSString *)otherButtonTitles, ...;


+ (void)gg_showActionSheetInView:(UIView *)view
                        title:(nullable NSString *)title
           clickedButtonBlock:(void (^)(NSInteger buttonIndex))block
            cancelButtonTitle:(nullable NSString *)cancelButtonTitle
       destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
            otherButtonTitles:(nullable NSString *)otherButtonTitles, ...;
@end

NS_ASSUME_NONNULL_END