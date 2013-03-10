//
//  KVMainMenuViewController.m
//  Share Me
//
//  Created by 孟 智 on 13-3-4.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import "KVMainMenuViewController.h"

@interface KVMainMenuViewController ()

@end

@implementation KVMainMenuViewController
@synthesize picture;
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
    //Draw ui button
    UIButton *goListButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, 200, 160)];
    goListButton.titleLabel.text = @"去列表";
    goListButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    goListButton.titleLabel.textColor = [UIColor redColor];
    goListButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    
    NSLog(@"draw ui button");
    [self.view addSubview:goListButton];
    
    CGRect nameLabelRect = CGRectMake(0, 380, 200, 100);
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:nameLabelRect];
    nameLabel.textAlignment = NSTextAlignmentCenter;
    nameLabel.text = @"CustomLabel";
    nameLabel.font = [UIFont boldSystemFontOfSize:12];
    nameLabel.textColor = [UIColor redColor];
    [self.view addSubview:nameLabel];
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backToLogin {
    [self setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    //[self sayGoodBye];
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

#pragma mark -
#pragma mark SayGoodBye
- (void)sayGoodBye {
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"title" message:@"message" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

@end
