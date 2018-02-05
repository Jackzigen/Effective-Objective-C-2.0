//
//  AboutProperty.m
//  Effective Objective-C 2.0
//
//  Created by Jack on 2018/2/2.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import "AboutProperty.h"
@interface AboutProperty()
//假设brain是一个复杂的类
@property (nonatomic,copy) NSString *brain;
@end
@implementation AboutProperty
-(NSString *)brain{
    if (!_brain) {
        _brain = [NSString new];
    }
    return _brain;
}
@end
