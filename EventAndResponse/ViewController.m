//
//  ViewController.m
//  EventAndResponse
//
//  Created by 赵远 on 15/7/25.
//  Copyright (c) 2015年 GongZiYuan. All rights reserved.
//

#import "ViewController.h"
#import "EventTestView1.h"
#import "EventTestView2.h"

@interface ViewController (){
    EventTestView1 *eventView1;
    EventTestView2 *eventView2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    eventView1 = [[EventTestView1 alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:eventView1];
    
    
    eventView2 = [[EventTestView2 alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    [self.view addSubview:eventView2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"controller - touchesBeagan..");
    
    // 把事件传递下去给父View或包含他的ViewController
//    [self.nextResponder touchesBegan:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"controller - touchesCancelled..");
    // 把事件传递下去给父View或包含他的ViewController
//    [self.nextResponder touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"controller - touchesEnded..");
    // 把事件传递下去给父View或包含他的ViewController
//    [self.nextResponder touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"controller - touchesMoved..");
    // 把事件传递下去给父View或包含他的ViewController
//    [self.nextResponder touchesBegan:touches withEvent:event];
}
@end
