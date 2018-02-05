//
//  HZGPerson.h
//  Effective Objective-C 2.0
//
//  Created by Jack on 2018/2/5.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 * 18 尽量使用不可变对象
 *   尽量创建不可变对象
 *   若某属性需要对象内修改，可以在头文件设为readonly,然后在实现文件设为readwrite
 *   不要对外公布可变属性，提供相关方法去操作处理。
 */
@interface HZGPerson : NSObject
@property(nonatomic,copy,readonly) NSString *firstName;
@property(nonatomic,copy,readonly) NSString *lastName;
@property(nonatomic,strong,readonly) NSSet *friends;

-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;
-(void)addFriend:(HZGPerson *)person;
-(void)removeFriend:(HZGPerson *)person;
@end
