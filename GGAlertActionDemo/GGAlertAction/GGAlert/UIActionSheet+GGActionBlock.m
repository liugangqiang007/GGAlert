//
//  UIActionSheet+GGActionBlock.m
//  GGAlertAction
//
//  Created by LGQ on 16/5/26.
//  Copyright © 2016年 LGQ. All rights reserved.
//

#import "UIActionSheet+GGActionBlock.h"
#import <objc/runtime.h>

@interface UIActionSheet ()<UIActionSheetDelegate>
@end

@implementation UIActionSheet (GGActionBlock)

static char bolckKey;

- (void)gg_showInView:(UIView *)view actionBlock:(void (^)(NSInteger))actionBlock {
    
    if (actionBlock) {
        objc_removeAssociatedObjects(self);
        objc_setAssociatedObject(self, &bolckKey, actionBlock, OBJC_ASSOCIATION_COPY);
        self.delegate = self;
    }
    
    [self showInView:view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    void (^actionBlock)(NSInteger buttonIndex);
    actionBlock = objc_getAssociatedObject(self, &bolckKey);
    
    if (actionBlock) {
        actionBlock(buttonIndex);
    }
}
@end
