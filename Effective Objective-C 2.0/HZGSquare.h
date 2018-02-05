//
//  HZGSquare.h
//  Effective Objective-C 2.0
//
//  Created by Jack on 2018/2/3.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HZGRectangle.h"
@interface HZGSquare : HZGRectangle<NSCoding>
-(id)initWithDimension:(float)dimention;
@end
