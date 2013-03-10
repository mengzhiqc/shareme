//
//  KVBlogDetailViewController.h
//  Share Me
//
//  Created by developer on 13-3-10.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KVBlog.h"
@interface KVBlogDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *btitle;
@property (strong, nonatomic) IBOutlet UILabel *bcontent;
@property (strong, nonatomic) IBOutlet UILabel *bauthor;
@property(strong,nonatomic) KVBlog * blog;
@end
