//
//  Command.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import "Command.h"
#import "CommandManager.h"

@implementation Command

- (void)execute {
    // 子类重写改方法->处理自己事情
    
    [self done];
}

- (void)cancel {
    _complete = nil;
}

- (void)done {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (self->_complete) {
            self->_complete(self);
        }
        self->_complete = nil;
        
        [CommandManager.shareInstance.arrayCommands removeObject:self];
    });
}
@end
