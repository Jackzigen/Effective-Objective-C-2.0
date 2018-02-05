//
//  HZGRectangle.m
//  Effective Objective-C 2.0
//
//  Created by Jack on 2018/2/3.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import "HZGRectangle.h"

@implementation HZGRectangle
-(id)initWithWidth:(float)width height:(float)height{
    self = [super init];
    if (!self) {
        return nil;
    }
    _width = width;
    _height = height;
    NSLog(@"创建完毕");
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        _width = [decoder decodeFloatForKey:@"width"];
        _height = [decoder decodeFloatForKey:@"height"];
    }
    return self;
}
@end
