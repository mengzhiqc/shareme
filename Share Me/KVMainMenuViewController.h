//
//  KVMainMenuViewController.h
//  Share Me
//
//  Created by 孟 智 on 13-3-4.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KVSayGoodBye.h"

@interface KVMainMenuViewController : UIViewController<KVSayGoodBye>

@property (strong,nonatomic) UIImage *picture;
-(IBAction)backToLogin;

@end
