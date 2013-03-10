//
//  KVBlog.h
//  Share Me
//
//  Created by developer on 13-3-10.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KVBlog : NSObject
@property(strong,nonatomic) NSString *title;
@property(strong,nonatomic) NSString *content;
@property(strong,nonatomic) NSString *author;
- (KVBlog *)initWithTitle:(NSString *)ctitle content:(NSString *) ccontent author:(NSString *) cauthor;
@end
