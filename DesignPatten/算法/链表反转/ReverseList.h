//
//  ReverseList.h
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

struct Node {
    int data;
    struct Node *next;
};

@interface ReverseList : NSObject
/// 链表反转
struct Node *reverseList(struct Node *head);
/// 构造一个链表
struct Node * constructList(void);
/// 打印链表中数据
void printList(struct Node *head);

@end

NS_ASSUME_NONNULL_END
