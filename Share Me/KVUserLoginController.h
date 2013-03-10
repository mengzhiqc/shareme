//
//  KVUserLoginController.h
//  Share Me
//
//  Created by 孟 智 on 13-3-1.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KVUserLoginController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UITextField *passwd;
@property (strong, nonatomic) UINavigationController *navControl;

- (IBAction)loginToSystem:(id)sender;
- (IBAction)registerToSystem:(id)sender;
- (IBAction) pressBlank:(id)sender;
- (IBAction)textFieldDoneEditing:(id)sender;
@end
