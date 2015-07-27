//
//  EventTestButton.m
//  EventAndResponse
//
//  Created by 赵远 on 15/7/26.
//  Copyright (c) 2015年 GongZiYuan. All rights reserved.
//

#import "EventTestButton.h"

@implementation EventTestButton

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"btn - touchesBeagan..");
    
    // 把事件传递下去给父View或包含他的ViewController
    [self.nextResponder touchesBegan:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"btn - touchesCancelled..");
    // 把事件传递下去给父View或包含他的ViewController
    [self.nextResponder touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"btn - touchesEnded..");
    // 把事件传递下去给父View或包含他的ViewController
    [self.nextResponder touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"btn - touchesMoved..");
    // 把事件传递下去给父View或包含他的ViewController
    [self.nextResponder touchesBegan:touches withEvent:event];
}


@end
