//
//  ReverseList.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import "ReverseList.h"

@implementation ReverseList

struct Node *reverseList(struct Node *head) {
    
    // 定义遍历指针，初始化为头节点
    struct Node *p = head;
    
    // 反转后的链表头部
    struct Node *newH = NULL;
    
    while (p != NULL) {
        
        // 记录下一个节点
        struct Node *temp = p->next;
        
        // 当前节点的next指向新链表头部
        p->next = newH;
        
        // 更改新链表头部为当前节点
        newH = p;
        
        // 移动 p 指针
        p = temp;
    }
    
    // 返回反转后的链表头节点
    return newH;
}

struct Node * constructList(void) {
    // 定义头节点
    struct Node *head = NULL;
    // 记录当前尾节点
    struct Node *cur = NULL;
    
    for (int i = 1; i < 5; i++) {

        struct Node *node = malloc(sizeof( struct Node));
        node->data = i;
        
        // 头节点为空，新节点即为头结点
        if (head == NULL) {
            head = node;
        } else {
            // 当前节点的next为新节点
            cur->next = node;
        }
        // 设置当前节点为新节点
        cur = node;
    }
    return head;
}

void printList(struct Node *head) {
    struct Node *temp = head;
    
    while (temp != NULL) {
        printf("node is %d \n", temp->data);
        temp = temp->next;
    }
}

@end
