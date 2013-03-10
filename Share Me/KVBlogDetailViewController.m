//
//  KVBlogDetailViewController.m
//  Share Me
//
//  Created by developer on 13-3-10.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import "KVBlogDetailViewController.h"

@interface KVBlogDetailViewController ()

@end

@implementation KVBlogDetailViewController
@synthesize blog;
@synthesize btitle;
@synthesize bcontent;
@synthesize bauthor;

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
    self.btitle.text =blog.title;
    self.bcontent.text = blog.content;
    self.bauthor.text = blog.author;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
