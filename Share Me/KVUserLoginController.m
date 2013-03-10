//
//  KVUserLoginController.m
//  Share Me
//
//  Created by 孟 智 on 13-3-1.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import "KVUserLoginController.h"
#import "KVMainMenuViewController.h"

@interface KVUserLoginController ()

@end

@implementation KVUserLoginController
@synthesize username;
@synthesize passwd;
@synthesize navControl;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"登陆系统";
    KVMainMenuViewController *mainMenu = [[KVMainMenuViewController alloc] initWithNibName:@"KVMainMenuViewController" bundle:nil];
    self.navControl = [[UINavigationController alloc]initWithRootViewController:mainMenu];

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark login to system
- (IBAction)loginToSystem:(id)sender {
    if (YES || [self checkUsernameAndPasswd:self.username.text passwd:self.passwd.text]) {

        [self presentViewController:self.navControl animated:TRUE completion:nil];
    } else {
        [[[UIAlertView alloc] initWithTitle:@"登陆错误" message:@"用户名密码错误，请重新输入" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    }
    
}

- (BOOL) checkUsernameAndPasswd: (NSString *)cusername passwd:(NSString *)cpasswd {
    if ([cusername isEqualToString:@"kavin"] && [cpasswd isEqualToString:@"123456"]) {
        return YES;
    } else {
        return NO;
    }
}

- (IBAction)registerToSystem:(id)sender {
}

- (IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)pressBlank:(id)sender {
    [username resignFirstResponder];
    [passwd resignFirstResponder];
}
@end