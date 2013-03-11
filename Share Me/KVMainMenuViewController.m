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
#import "KVProductViewController.h"


@interface KVMainMenuViewController ()

@end

@implementation KVMainMenuViewController
@synthesize picArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView {
    [super loadView];
    
    [self loadAnimationPics];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i =0 ; i< [self.picArray count];i++) {
        UIImage *image = [UIImage imageNamed:[self.picArray objectAtIndex:i]];
        [array addObject:image];
        image = nil;
    }
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 10, 320, 100)];
    imageView.animationDuration = 150;
    imageView.animationRepeatCount = 0;
    imageView.animationImages = array;
    [imageView startAnimating];
    [self.view addSubview:imageView];
}

- (void) loadAnimationPics {
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObject:@"image1.png"];
    [array addObject:@"image2.png"];
    self.picArray = array;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"我的家";
 

    NSDictionary *buttonList = [self getButtonList];
    NSArray * keys = [[buttonList allKeys] sortedArrayUsingSelector:@selector(compare:)];
    int i;
    for (i=0; i < [keys count]; i++) {
        UIButton *buttonView = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [buttonView setFrame:CGRectMake(20*i+30, 150+i*65, 180, 40)];
        NSString *  key = [keys objectAtIndex:i];
        NSString * title = [[NSString alloc]initWithFormat:@"%@",[buttonList objectForKey:key]];
        [buttonView setTitle:title forState:UIControlStateNormal];
        buttonView.backgroundColor = [UIColor clearColor];
        
        [buttonView addTarget:self action:NSSelectorFromString([[NSString alloc]initWithFormat:@"%@:",key]) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:buttonView];
        buttonView = nil;

    }
 
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSDictionary *)getButtonList {
    NSArray * valueList = [[NSMutableArray alloc]initWithObjects:@"自我介绍",@"我的Blogs",@"我的作品",@"请联系我", nil];
    NSArray * keyList = [[NSMutableArray alloc]initWithObjects:@"goIntroduce",@"goBlogs",@"goComponents",@"goContact", nil];
    NSDictionary * arrayList = [[NSDictionary alloc] initWithObjects:valueList forKeys:keyList];
    return arrayList;
}


- (IBAction)goBlogs:(id)sender {
    KVBlogListViewController *listController = [[KVBlogListViewController alloc] initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:listController animated:YES];
}

- (IBAction)goIntroduce:(id)sender {
    KVIntroduceViewController *introduceController = [[KVIntroduceViewController alloc]initWithNibName:@"KVIntroduceViewController" bundle:nil];
    [self.navigationController pushViewController:introduceController animated:YES];
}

- (IBAction)goComponents:(id)sender{
    KVProductViewController *productView = [[KVProductViewController alloc]init];
    [[[UIAlertView alloc]initWithTitle:@"提醒" message:@"还未完工" delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles:nil, nil]show];
    //[self.navigationController pushViewController:productView animated:YES];
}

- (IBAction)goContact:(id)sender{
    [[[UIAlertView alloc]initWithTitle:@"提醒" message:@"还未完工" delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles:nil, nil]show];
}


@end
