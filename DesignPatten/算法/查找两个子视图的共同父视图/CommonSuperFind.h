//
//  CommonSuperFind.h
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommonSuperFind : NSObject

+ (NSArray <UIView *>*)findCommonSuperView:(UIView *)aView otherView:(UIView *)bView;

@end

NS_ASSUME_NONNULL_END
