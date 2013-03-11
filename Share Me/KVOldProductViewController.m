//
//  KVOldProductViewController.m
//  Share Me
//
//  Created by developer on 13-3-10.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import "KVOldProductViewController.h"

@interface KVOldProductViewController ()

@end

@implementation KVOldProductViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UITabBarItem *item = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:1];
        self.tabBarItem = item;
        
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

@end
