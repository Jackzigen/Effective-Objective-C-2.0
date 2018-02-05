//
//  AboutProperty.h
//  Effective Objective-C 2.0
//
//  Created by Jack on 2018/2/2.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 * 理解属性
 * 1.在对象内部读取数据时，应该直接通过实例变量来读，而写入数据时，则通过属性来写。
 * 2.在初始化方法及dealloc方法中，总是应该直接通过实例变量来读写数据。
 */
@interface AboutProperty : NSObject

@end
