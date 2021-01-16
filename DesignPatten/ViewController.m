//
//  ViewController.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/15.
//

#import "ViewController.h"
#import "TaskChainObj.h"
#import "BridgeObj.h"
#import "AdapterTarget.h"
#import "CharReverse.h"
#import "ReverseList.h"
#import "MergeSortedList.h"
#import "HashFind.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self findFirstChar];
}


- (void)findFirstChar {
    char ch[] = "aibagccdeff";
    char fc = findFirstChar(ch);
    printf("this char is %c \n", fc);
    //this char is i 
}

// 合并有序数组
- (void)mergetList {
    int a[5] = {1,4,6,7,9};
    int b[8] = {2,3,5,6,8,10,11,12};
    int result[13];
    
    mergeList(a, 5, b, 8, result);
    
    for (int i = 0; i < 13; i++) {
        printf("%d ", result[i]);
    }
}
/// 链表反转
- (void)reverseList {
    struct Node *head = constructList();
    struct Node *reverseHead = reverseList(head);
    printList(reverseHead);
    printList(head);
}

/// 字符串反转
- (void)char_reverse {
    char ch[] = "hello world";
    char_reverse(ch);
    
    NSLog(@"%s \n", ch);
    //dlrow olleh
}


- (void)command {
    // 行为参数化
    // 降低代码重合度
    
}

/// 适配器
- (void)adapter {
    AdapterTarget *adapter = [[AdapterTarget alloc] init];
    Target *target = [[Target alloc] init];
    adapter.target = target;
    [adapter request];
}

/// 桥接模式
- (void)bridge {
    BridgeObj *obj = [[BridgeObj alloc] init];
    [obj fetch];
}

/// 责任链模式
- (void)taskChain {
    TaskChainObj *a = [[TaskChainObj alloc] init];
    a.name = @"A";
    TaskChainObj *b = [[TaskChainObj alloc] init];
    b.name = @"B";
    a.nextTask = b;
    
    [a handle:^(TaskChainObj * _Nullable handler, BOOL handled) {
        NSLog(@"\n------> viewDidLoad<-------- %@, %d", handler.name, handled);
    }];
}
@end
