//
//  User.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import "User.h"

@implementation User

+ (instancetype)shareInstance {
    static User *instance = nil;
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

@end
