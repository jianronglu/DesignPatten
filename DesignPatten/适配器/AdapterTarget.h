//
//  CoolTarget.h
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import <Foundation/Foundation.h>
#import "Target.h"

NS_ASSUME_NONNULL_BEGIN

// 适配对象
@interface AdapterTarget : NSObject

// 被适配对象
@property (nonatomic, strong) Target *target;

// 对原有方法包装
- (void)request;

@end

NS_ASSUME_NONNULL_END
