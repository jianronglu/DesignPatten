//
//  CoolTarget.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import "AdapterTarget.h"

@implementation AdapterTarget

- (void)request {
    NSLog(@"To do something....");
    [self.target operation];
    NSLog(@"To do something....");
}

@end
