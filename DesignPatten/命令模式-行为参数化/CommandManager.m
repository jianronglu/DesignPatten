//
//  CommandManager.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import "CommandManager.h"

@implementation CommandManager

+ (instancetype)shareInstance {
    static CommandManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

/// 重写方法【必不可少】
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self shareInstance];
}

/// 重写方法【必不可少】
- (id)copyWithZone:(nullable NSZone *)zone {
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _arrayCommands = [NSMutableArray array];
    }
    return self;
}

+ (void)executeCommand:(Command *)cmd completion:(CommandCompleteCallBack)completion {
    if (cmd) {
        // 如果命令正在执行不做处理，否则添加并执行命令
        if (![self _isExecutingCommand:cmd]) {
            [[[self shareInstance] arrayCommands] addObject:cmd];
            // 设置命令执行完成的回调
            cmd.complete = completion;
            //执行命令
            [cmd execute];
        }
    }
}

+ (void)cancelCommand:(Command *)cmd {
    if (cmd) {
        
        [[[self shareInstance] arrayCommands] removeObject:cmd];
        
        [cmd cancel];
    }
}

+ (BOOL)_isExecutingCommand:(Command *)cmd {
    if (cmd) {
        NSArray *cmds = [[self shareInstance] arrayCommands];
        for (Command *acmd in cmds) {
            if (cmd == acmd) {
                return YES;
            }
        }
        //[cmds containsObject:cmd];
    }
    return NO;
}
@end
