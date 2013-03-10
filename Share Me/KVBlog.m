//
//  KVBlog.m
//  Share Me
//
//  Created by developer on 13-3-10.
//  Copyright (c) 2013年 孟 智. All rights reserved.
//

#import "KVBlog.h"

@implementation KVBlog
@synthesize title;
@synthesize content;
@synthesize author;

- (KVBlog *)initWithTitle:(NSString *)ctitle content:(NSString *) ccontent author:(NSString *) cauthor {
    self.title = ctitle;
    self.content = ccontent;
    self.author = cauthor;
    return self;
}
@end
