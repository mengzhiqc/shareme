//
//  KVMainMenuViewController.m
//  Share Me
//
//  Created by 孟 智 on 13-3-4.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import "KVMainMenuViewController.h"
#import "KVBlogListViewController.h"
#import "KVIntroduceViewController.h"

@interface KVMainMenuViewController ()

@end

@implementation KVMainMenuViewController


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
    self.title = @"我的家";
 
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)goList:(id)sender {
    KVBlogListViewController *listController = [[KVBlogListViewController alloc] initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:listController animated:YES];
}

- (IBAction)goIntroduce:(id)sender {
    KVIntroduceViewController *introduceController = [[KVIntroduceViewController alloc]initWithNibName:@"KVIntroduceViewController" bundle:nil];
    [self.navigationController pushViewController:introduceController animated:YES];
}
@end
