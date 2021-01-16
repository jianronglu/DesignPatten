//
//  HashFind.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/17.
//

#import "HashFind.h"

@implementation HashFind

char findFirstChar(char *cha) {
    char result = '\0'; // 空字符
    //定义一个数组用来存储各个字符出现的次数
    int array[256];
    // 初始化
    for (int i = 0; i < 256; i++) {
        array[i] = 0;
    }
    //定义指针 指向当前字符串头部
    char *p = cha;
    while (*p != '\0') {
        // 在字母对应存储位置 进行出现次数 +1 操作
        printf("*p ==== %d\n", *p);
        array[*(p++)]++;//对*p的位置进行++， 然后位置下移 *p-->97
    }
    // p 指针重新指向头部
    p = cha;
    while (*p != '\0') {
        // 遇到第一个出现次数为1的字符
        if (array[*p] == 1) {
            result = *p;
            break;
        }
        p++;
    }
    return result;
}

@end
