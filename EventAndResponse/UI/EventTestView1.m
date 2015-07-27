//
//  EventTestView1.m
//  EventAndResponse
//
//  Created by 赵远 on 15/7/25.
//  Copyright (c) 2015年 GongZiYuan. All rights reserved.
//

#import "EventTestView1.h"
#import "EventTestButton.h"

@interface EventTestView1 (){
    UIButton *testBtn1;
    UIButton *testBtn2;
}

@end
@implementation EventTestView1

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        testBtn1 = [[EventTestButton alloc] initWithFrame:CGRectMake(10, 10, 80, 40)];
        [testBtn1 addTarget:self action:@selector(testBtn1) forControlEvents:UIControlEventTouchUpInside];
        testBtn1.backgroundColor = [UIColor redColor];
        testBtn1.tag = 100;
        [self addSubview:testBtn1];
        
        
        testBtn2 = [[UIButton alloc] initWithFrame:CGRectMake(10, 0, 60, 100)];
        [testBtn2 addTarget:self action:@selector(testBtn2) forControlEvents:UIControlEventTouchUpInside];
        testBtn2.tag = 102;
        testBtn2.backgroundColor = [UIColor blueColor];
        [self addSubview:testBtn2];
    }
    return self;
}

-(void)testBtn1{
    NSLog(@"testBtn1");
}

-(void)testBtn2{
    NSLog(@"testBtn2");
}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    
    
//    CGPoint btnPointInA = [testBtn1 convertPoint:point fromView:self];
//    if ([testBtn1 pointInside:btnPointInA withEvent:event]) {
//        return testBtn1;
//    }
    
    // 否则，返回默认处理
    UIView *hitView = [super hitTest:point withEvent:event];
    return hitView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
