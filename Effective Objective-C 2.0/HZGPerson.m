//
//  HZGPerson.m
//  Effective Objective-C 2.0
//
//  Created by Jack on 2018/2/5.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import "HZGPerson.h"

@interface HZGPerson()
@property (nonatomic,copy,readwrite)NSString *firstName;
@property (nonatomic,copy,readwrite)NSString *lastName;
@end

@implementation HZGPerson{
    NSMutableSet *_internalFriends;
}

-(NSSet *)friends{
    return [_internalFriends copy];
}

-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName{
    self = [super init];
    if (!self) {
        return nil;
    }
    _firstName = firstName;
    _lastName = lastName;
    _internalFriends = [NSMutableSet new];
    return self;
}

-(void)addFriend:(HZGPerson *)person{
    [_internalFriends addObject:person];
}

-(void)removeFriend:(HZGPerson *)person{
    [_internalFriends removeObject:person];
}

@end
