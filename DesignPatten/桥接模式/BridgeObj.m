//
//  BridgeObj.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import "BridgeObj.h"
#import "BaseObjA.h"
#import "BaseObjB.h"

@interface BridgeObj ()
@property (nonatomic, strong) BaseObjA *baseA;
@end

@implementation BridgeObj

- (void)fetch {
    _baseA = [[ObjA2 alloc] init];
    BaseObjB *b3 = [[ObjB3 alloc] init];
    _baseA.objB = b3;
    [_baseA handle];
}

@end
