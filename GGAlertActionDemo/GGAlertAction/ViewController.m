//
//  ViewController.m
//  GGAlertAction
//
//  Created by LGQ on 16/5/25.
//  Copyright © 2016年 LGQ. All rights reserved.
//

#import "ViewController.h"

#import "GGAlert/GGAlert.h"
#import "UIAlertController+GGCategory.h"

typedef void(^Block)(NSInteger buttonIndex);

@interface ViewController ()

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%f", [[[UIDevice currentDevice] systemVersion] floatValue]);
}


- (IBAction)showAlertView:(UIButton *)sender {

    [GGAlert gg_showAlertViewWithTitle:@"title" message:@"message" clickedButtonBlock:^(NSInteger buttonIndex) {

        NSLog(@"%@", @(buttonIndex));

    } cancelButtonTitle:nil otherButtonTitles:@"other1", @"other2", @"other333", nil];

}

- (IBAction)showActionSheet:(UIButton *)sender {
    
    [GGAlert gg_showActionSheetInView:self.view title:@"title" clickedButtonBlock:^(NSInteger buttonIndex) {
        
        NSLog(@"%@", @(buttonIndex));
        
    } cancelButtonTitle:@"cancel" destructiveButtonTitle:@"destructive" otherButtonTitles:@"other1", @"other2", nil];
}

- (IBAction)showAlertController:(UIButton *)sender {
    
    UIAlertController *alertController = [self showAlertWithTitle:@"title"
                                                          message:@"message"
                                                   preferredStyle:UIAlertControllerStyleActionSheet];
    [alertController addActionWithTitle:@"action 1"
                                  style:UIAlertActionStyleCancel
                                handler:^(UIAlertAction * _Nonnull action) {
                                    NSLog(@"action 1");
                                }];
    [alertController addActionWithTitle:@"action 2"
                                  style:UIAlertActionStyleDestructive
                                handler:^(UIAlertAction * _Nonnull action) {
                                    NSLog(@"action 2");
                                }];
    [alertController addActionWithTitle:@"action 3"
                                  style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * _Nonnull action) {
                                    NSLog(@"action 3");
                                }];
    
}


@end
