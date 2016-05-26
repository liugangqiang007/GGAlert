//
//  UIAlertView+GGActionBlock.m
//  GGAlertAction
//
//  Created by LGQ on 16/5/26.
//  Copyright © 2016年 LGQ. All rights reserved.
//

#import "UIAlertView+GGActionBlock.h"
#import <objc/runtime.h>

@interface UIAlertView ()<UIAlertViewDelegate>
@end

@implementation UIAlertView (GGActionBlock)

static char bolckKey;

- (void)gg_showWithActionBlock:(void (^)(NSInteger buttonIndex))actionBlock {
    
    if (actionBlock) {
        objc_removeAssociatedObjects(self);
        objc_setAssociatedObject(self, &bolckKey, actionBlock, OBJC_ASSOCIATION_COPY);
        self.delegate = self;
    }
    
    [self show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    void (^actionBlock)(NSInteger buttonIndex);
    actionBlock = objc_getAssociatedObject(self, &bolckKey);
    
    if (actionBlock) {
        actionBlock(buttonIndex);
    }
}

@end
