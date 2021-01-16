//
//  Command.h
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Command;

typedef void(^CommandCompleteCallBack)(Command *__nullable cmd);

@interface Command : NSObject

@property (nonatomic, copy) CommandCompleteCallBack complete;

- (void)execute;

- (void)cancel;

- (void)done;

@end

NS_ASSUME_NONNULL_END
