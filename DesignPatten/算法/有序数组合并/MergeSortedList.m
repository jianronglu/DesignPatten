//
//  MergeSortedList.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/17.
//

#import "MergeSortedList.h"

@implementation MergeSortedList

void mergeList( int a[], int alen, int b[], int blen, int result[]) {
    int p = 0; // 遍历数组 a 的指针
    int q = 0; // 遍历数组 b 的指针
    int i = 0; // 记录当前存储的位置
    
    while (p < alen && q < blen ) {
        if (a[p] <= b[q]) {
            // 存储 a 数组的值
            result[i] = a[p];
            // 移动 a 数组遍历的指针
            p++;
        } else {
            result[i] = b[q];
            q++;
        }
        i++;
    }
    
    // a 数组有剩余
    while (p < alen) {
        result[i] = a[p++];
        i++;
    }
    // b 数组有剩余
    while (q < blen) {
        result[i] = b[q++];
        i++;
    }
}

@end
