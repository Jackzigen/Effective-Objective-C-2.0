//
//  ViewController.m
//  Effective Objective-C 2.0
//
//  Created by Jack on 2018/2/1.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import "ViewController.h"
#import "HZGSquare.h"
/*
 * 多用类型常量，少用#define预处理指令
 */
//static 修饰符意味着改变量仅在定义此变量的编译单元中可见
//const 修饰符意味着不能修改，修改编译器会报错
static const NSTimeInterval kAnimationDuration = 0.3;

//NSNotification 的命名
//In the header file
extern NSString *const EOCStringConstant;

//In the implementation file
NSString *const EOCStringConstant = @"VALUE";


/*
 * 用枚举表示状态、选项、状态码
 * 注：1.凡是需要以按位或操作来组合的枚举都应该使用NS_OPTIONS，若枚举不需要互相组合，就使用NS_ENUM
 *  2.在处理枚举类型的switch语句中不要实现default分支。这样的话，加入新枚举之后，编译器就会提示开发者：switch语句并未处理所有枚举
 */
typedef NS_ENUM(NSUInteger,EOCConnectionState){
    EOCConnectionStateDisConnected,
    EOCConnectionStateConnecting,
    EOCConnectionStateConnected,
};


typedef NS_OPTIONS(NSUInteger, EOCPermittedDirection){
    EOCPermittedDirectionUp   = 1<<0,
    EOCPermittedDirectionDown = 1<<1,
    EOCPermittedDirectionLeft = 1<<2,
    EOCPermittedDirectionRight= 1<<3,
};


//下面代码C++下会报错  忽略这个
//EOCPermittedDirection permittedDirections = EOCPermittedDirectionUp | EOCPermittedDirectionLeft;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self useLiteral];
    [self test];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 * 多用字面量语法，能及早发现问题
 */
-(void)useLiteral{
    NSNumber *someNumber = @1;
    NSNumber *intNumber = @2.5f;
    NSNumber *doubleNumber = @3.14159;
    NSNumber *boolNumber = @YES;
    NSNumber *charNumber = @'a';
    
    int x = 5;
    float y = 6.32f;
    NSNumber *expressionNumber = @(x * y);
    
    //数组字面量和常规方法的区别
    id obj1 = @"ajshaj";
    id obj2 = nil;
    id obj3 = @"xxxxxx";
    
    NSArray *arrayA = [NSArray arrayWithObjects:obj1,obj2,obj3, nil];
    //中间的值为nil时会报错，方便检查 但是很少这么用吧 @[obj1,nil,obj3]
    NSArray *arrayB = @[obj1,obj2,obj3];//这种情况下跟arrayA是无区别的
    
//    [arrayA enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"%lu ---- %@",(unsigned long)idx,obj);
//    }];
    
    [arrayB enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%lu ---- %@",(unsigned long)idx,obj);
    }];
    
    //字面量字典
    //一般写法 比较难看
    NSDictionary *personData = [NSDictionary dictionaryWithObjectsAndKeys:@"Matt",@"firstName",@"Galloway",@"lastName",[NSNumber numberWithInt:28],@"age", nil];
    //键  值   用这个
    NSDictionary *personDataL = @{@"firstName" : @"Matt",@"lastName" : @"Galloway",@"age" : @28};
    
    //
    NSString *lastName = personDataL[@"lastName"];
    
    //可变数组和字典
    //    mutableArray[1]  = @"dog";
    //  mutableDic[@"lastName"] = @"xxxx";
    
    //创建可变数组
    NSMutableArray *mutable = [@[@1,@2,@3] mutableCopy];
}


-(void)test{
    double num = 1436185600;//repaymentEntity.dueDate
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:num];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    NSLog(@"confromTimespStr -----  %lu",(unsigned long)[confromTimespStr hash]);
    
    HZGSquare *sq = [[HZGSquare alloc] initWithDimension:5];
    
}

/*
 *  21 理解OC错误模型
 *  NSException 用在处理严重错误 ，比如：父类中的方法，子类必须覆盖才能使用的场景，即在父类方法中抛异常
 */
-(void)understandErrorModel{
    //严重错误
    NSString *reason = [NSString stringWithFormat:@"%@ must be override",NSStringFromSelector(_cmd)];
    @throw [NSException exceptionWithName:NSInvalidArgumentException reason:reason userInfo:nil];
    
    //一般错误
//    1.返回nil/0
//    如初始化方法  return nil;
//    2.NSError
    
    
}
@end
