//
//  HZGRuntime.m
//  Effective Objective-C 2.0
//
//  Created by Jack on 2018/2/2.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import "HZGRuntime.h"
#import <objc/runtime.h>
#import <objc/message.h>
@implementation HZGRuntime
/*
 * 管理关联对象  第10条
 * 可以通过“关联对象”机制把两个对象连接起来
 * 只有在其他做法不可行时才应选用关联对象，因为这种做法可能会导致一些难以发现的bug（比如关联block时，可能会循环引用）
 */
-(void)associatedObject{
    //    objc_setAssociatedObject(<#id  _Nonnull object#>, <#const void * _Nonnull key#>, <#id  _Nullable value#>, <#objc_AssociationPolicy policy#>)
    //    objc_getAssociatedObject(<#id  _Nonnull object#>, <#const void * _Nonnull key#>)
    //    objc_removeAssociatedObjects(<#id  _Nonnull object#>)
}

/*
 * 11 objc_msgSend
 * 执行objc_msgSend,会从接收者所属的类中搜寻方法列表，若能找到就跳至实现代码。若找不到就从继承体系中向上查找，找到合适的方法才跳转。若最终找不到，就会执行消息转发(message forwarding)。
 * 若找到，objc_msgSend会将匹配结果缓存到“快速映射表”(fast Map)里面，每个类都有这种缓存，下次再有相同的详细就很快了
 */
-(void)message{
    
}

/*
 * 12 消息转发
 *    分两阶段：1.先征询接收者所属的类，看其是否能动态添加方法，以处理当前这个"unknown selector",这叫"动态方法解析"(dynamic method resolution) 2.“完整的消息转发机制”(full forward mechanism)
 */
-(void)messageForwarding{
    //动态方法解析
    
}

/*
 * 13 method swizzling 方法调配
 */



@end
