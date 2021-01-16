//
//  TaskChainObj.h
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class TaskChainObj;

typedef void(^CompleteionBlock) (BOOL handled);

typedef void(^ResultBlock)(TaskChainObj * __nullable handler, BOOL handled);

@interface TaskChainObj : NSObject
@property (nonatomic, copy) NSString *name;
/// 下一个响应者（响应链构成的关键）
@property (nonatomic, strong) TaskChainObj *nextTask;

/// 响应者的处理方法
- (void)handle:(ResultBlock)result;

/// 各个业务在该方法当中做实际业务处理
- (void)handleTask:(CompleteionBlock)completion;

@end

NS_ASSUME_NONNULL_END

