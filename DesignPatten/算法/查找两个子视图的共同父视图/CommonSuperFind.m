//
//  CommonSuperFind.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/17.
//

#import "CommonSuperFind.h"

@implementation CommonSuperFind

+ (NSArray<UIView *> *)findCommonSuperView:(UIView *)aView otherView:(UIView *)bView {
    NSMutableArray *result = @[].mutableCopy;
    NSArray *aViews = [self findSuperViews:aView];
    NSArray *bViews = [self findSuperViews:bView];
    NSUInteger minCount = MIN(aViews.count, bViews.count);
    int i = 0;
    
    while (i < minCount) {
        UIView *a = aViews[aViews.count - i-1]; //倒序查找
        UIView *b = bViews[bViews.count - i-1];
        if (a == b) {
            [result addObject:a];
            i++;
        } else { // 找完了所有父视图
            break;
        }
    }
    
    return result;
}

+ (NSArray <UIView *>*)findSuperViews:(UIView *)view {
    NSMutableArray *result = @[].mutableCopy;
    UIView *temp = view.superview;
    while (temp) {
        [result addObject:temp];
        temp = temp.superview;
    }
    return result;
}
@end
