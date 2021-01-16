//
//  CharReverse.m
//  DesignPatten
//
//  Created by 陆建荣 on 2021/1/16.
//

#import "CharReverse.h"

@implementation CharReverse

void char_reverse(char *cha) {
    char *begin = cha;
    char *end = cha + strlen(cha) - 1;
    
    while (begin < end) {
        char temp = *begin;
        *(begin++) = *end;
        *(end--) = temp;
    }
}

@end
