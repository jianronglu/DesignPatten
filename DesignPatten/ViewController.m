//
//  ViewController.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/15.
//

#import "ViewController.h"
#import "TaskChainObj.h"
#import "BridgeObj.h"
#import "AdapterTarget.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self adapter];
    
}

- (void)command {
    // 行为参数化
    // 降低代码重合度
    
}

/// 适配器
- (void)adapter {
    AdapterTarget *adapter = [[AdapterTarget alloc] init];
    Target *target = [[Target alloc] init];
    adapter.target = target;
    [adapter request];
}

/// 桥接模式
- (void)bridge {
    BridgeObj *obj = [[BridgeObj alloc] init];
    [obj fetch];
}

/// 责任链模式
- (void)taskChain {
    TaskChainObj *a = [[TaskChainObj alloc] init];
    a.name = @"A";
    TaskChainObj *b = [[TaskChainObj alloc] init];
    b.name = @"B";
    a.nextTask = b;
    
    [a handle:^(TaskChainObj * _Nullable handler, BOOL handled) {
        NSLog(@"\n------> viewDidLoad<-------- %@, %d", handler.name, handled);
    }];
}
@end
