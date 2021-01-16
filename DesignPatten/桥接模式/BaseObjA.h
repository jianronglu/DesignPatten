//
//  BaseObjA.h
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import <Foundation/Foundation.h>
#import "BaseObjB.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseObjA : NSObject

/// 桥接模式的核心实现
@property (nonatomic, strong) BaseObjB *objB;

- (void)handle;

@end

@interface ObjA1 : BaseObjA

@end

@interface ObjA2 : BaseObjA

@end

@interface ObjA3 : BaseObjA

@end

NS_ASSUME_NONNULL_END
