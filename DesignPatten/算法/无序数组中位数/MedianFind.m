//
//  MedianFind.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/17.
//

#import "MedianFind.h"

@implementation MedianFind

/*
 中位数
 n 为计数时，为(n+1) / 2
 n 为偶数时，为(n/2 + (n/2+1)) / 2
 */
int findMedian(int a[], int len) {
    int low = 0;
    int high = len - 1;
    
    int mid = (len - 1) / 2;
    int div = PartSort(a, low, high);
    while (div != mid) {
        if (mid < div) {
            // 左半部分查找
            div = PartSort(a, low, div-1);
        } else {
            //
            div = PartSort(a, div+1, high);
        }
    }
    return a[mid];
}

int PartSort(int a[], int start, int end) {
    int low = start;
    int high = end;
    
    int key = a[end];
    while (low < high) {
        //左边找比key大的值
        while (low < high && a[low] <= key) {
            ++low;
        }
        //右边找比key小的值
        while (low < high && a[high] >= key) {
            --high;
        }
        if (low < high) {
            //找到之后交换
            int temp = a[low];
            a[low] = a[high];
            a[high] = temp;
        }
    }
    int temp = a[high];
    a[high] = a[end];
    a[end] = temp;
    return low;
}
@end
