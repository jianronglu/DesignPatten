//
//  CommandManager.h
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import <Foundation/Foundation.h>
#import "Command.h"
NS_ASSUME_NONNULL_BEGIN


@interface CommandManager : NSObject

@property (nonatomic, strong) NSMutableArray <Command *>*arrayCommands;

+ (instancetype)shareInstance;

/// 执行命令
+ (void)executeCommand:(Command *)cmd completion:(CommandCompleteCallBack)completion;

/// 取消命令
+ (void)cancelCommand:(Command *)cmd;

@end

NS_ASSUME_NONNULL_END
