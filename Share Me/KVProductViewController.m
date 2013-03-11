//
//  KVProductViewController.m
//  Share Me
//
//  Created by developer on 13-3-10.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import "KVProductViewController.h"
#import "KVOldProductViewController.h"
#import "KVLatestProductViewController.h"


@interface KVProductViewController ()

@end

@implementation KVProductViewController

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
	// Do any additional setup after loading the view.
    self.title = @"我的作品";
    UITabBarController *tabBar = [[UITabBarController alloc]init];
    //tabBar.delegate = self;
    tabBar.viewControllers = [self getViewControllers];
    tabBar.view.frame = CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height);
    [self.view addSubview:tabBar.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)getViewControllers {
    
    KVOldProductViewController *oldproduct = [[KVOldProductViewController alloc]initWithNibName:@"KVOldProductViewController" bundle:nil];
    KVLatestProductViewController *latestproduct = [[KVLatestProductViewController alloc]initWithNibName:@"KVLatestProductViewController" bundle:nil];
    NSArray * array = [[NSArray alloc]initWithObjects:oldproduct,latestproduct, nil];
    return array;
}


@end
