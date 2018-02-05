//
//  HZGSquare.m
//  Effective Objective-C 2.0
//
//  Created by Jack on 2018/2/3.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import "HZGSquare.h"

@implementation HZGSquare
/*
 * 16条 全能初始化方法
 * 为类写个全能初始化方法
 */

-(id)init{
    return [super initWithWidth:0.5 height:1.0];
}

//-(id)init{
//    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Must use initWithWidth:Height: instead" userInfo:nil];
//}

//注：如果子类的全能初始化方法跟父类的名称不一样，那么就应该覆写父类的全能初始化方法
-(id)initWithWidth:(float)width height:(float)height{
    float dimention = MAX(width, height);
    return [self initWithDimension:dimention];
}
//如果父类的初始化方法不适用于子类，那么就要覆盖这个父类方法，并抛出异常
//-(id)initWithWidth:(float)width height:(float)height{
//    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Must use initWithWidth:Height: instead" userInfo:nil];
//}

//子类的全能初始化方法
-(id)initWithDimension:(float)dimention{
    return [super initWithWidth:dimention height:dimention];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        //实现自己的方法
    }
    return self;
}


@end
