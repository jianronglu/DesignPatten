//
//  BaseObjA.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import "BaseObjA.h"

@implementation BaseObjA

- (void)handle {
    [self.objB featchData];
}

@end

@implementation ObjA1

- (void)handle {
    NSLog(@"ObjA1");
    [super handle];
    // todo something
}

@end

@implementation ObjA2

- (void)handle {
    NSLog(@"ObjA2");
    [super handle];
    // todo something
}

@end

@implementation ObjA3

- (void)handle {
    NSLog(@"ObjA3");
    [super handle];
    // todo something
}

@end
