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
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark login to system
- (IBAction)loginToSystem:(id)sender {
    KVMainMenuViewController * mainMenu = [[KVMainMenuViewController alloc] initWithNibName:@"KVMainMenuViewController" bundle:nil];
    //[self presentedViewController:mainMenu animated:TRUE completion:nil];
    [self presentViewController:mainMenu animated:TRUE completion:nil];
}

- (IBAction)registerToSystem:(id)sender {
}
@end
