//
//  HZGRectangle.h
//  Effective Objective-C 2.0
//
//  Created by Jack on 2018/2/3.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HZGRectangle : NSObject<NSCoding>
@property (nonatomic,assign,readonly) float width;
@property (nonatomic,assign,readonly) float height;
-(id)initWithWidth:(float)width height:(float)height;
@end
