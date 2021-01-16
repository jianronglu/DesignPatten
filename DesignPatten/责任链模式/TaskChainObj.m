//
//  TaskChainObj.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/15.
//

#import "TaskChainObj.h"

@implementation TaskChainObj

- (void)handle:(ResultBlock)result {
    CompleteionBlock complete = ^(BOOL handled) {
        // 当前业务处理掉了，上抛结果
        if (handled) {
            result(self, handled);
        } else {
            if (self.nextTask) {
                [self.nextTask handle:result];
            } else {
                result(nil, NO);
            }
        }
    };
    [self handleTask:complete];
}

- (void)handleTask:(CompleteionBlock)completion {
    if (completion) {
        if ([self.name isEqualToString:@"A"]) {
            completion(NO);
        } else {
            completion(YES);
        }
    }
    NSLog(@"\n------>%@ 下载图片任务<--------", self.name);
}
@end
