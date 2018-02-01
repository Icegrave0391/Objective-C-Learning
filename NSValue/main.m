//
//  main.m
//  NSValue
//  **********注意Foundation集合只能储存对象*****
//  Created by 张储祺 on 2018/2/1.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct XYPoint{
    char x ;
    char y ;
} aPoint ;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray * myarr = [NSMutableArray array] ;     //建立空数组
        NSNumber * anumber = [NSNumber numberWithInt:5] ;
        [myarr addObject:anumber] ;         //注意addObject:   方法参数是id类型（必须是对象）
        
        aPoint a ;
        a.x = 'a' ; a.y = 'b' ;    //思考如何将a存入数组myarr ，a是结构而不是对象  //显然[myarr addObject:a]不行
        
        //@encode 编译器指令
        NSValue *elem = [NSValue valueWithBytes:&a objCType:@encode(aPoint)] ;
        [myarr addObject:elem] ;

    }
    return 0;
}
