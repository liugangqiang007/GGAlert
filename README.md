# GGAlert

封装 `UIAlertView` 和 `UIActionSheet`, 使用 block 回调处理点击事件  
  

# Usage

先引入头文件：  

	#import "GGAlert.h"

使用 `UIAlertView`

	[GGAlert gg_showAlertViewWithTitle:@"title" message:@"message" clickedButtonBlock:^(NSInteger buttonIndex) {
        
        NSLog(@"%@", @(buttonIndex)); // block回调, 在这里写点击事件回调
        
    } cancelButtonTitle:@"cancel" otherButtonTitles:@"other1", @"other2", @"other3", nil];
	


使用 `UIActionSheet`

    [GGAlert gg_showActionSheetInView:self.view title:@"title" clickedButtonBlock:^(NSInteger buttonIndex) {
        
        NSLog(@"%@", @(buttonIndex)); // block回调, 在这里写点击事件回调
        
    } cancelButtonTitle:@"cancel" destructiveButtonTitle:@"destructive" otherButtonTitles:@"other1", @"other2", nil];



