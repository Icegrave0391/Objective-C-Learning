//
//  AddressCard.m
//  AddressBook
//
//  Created by 张储祺 on 2018/1/31.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize name , email ;
-(void)setName:(NSString *)a andEmail:(NSString *)b{
    self.name = a ;
    self.email = b ;
}
-(void) print{
    NSLog(@"================================");
    NSLog(@"|                              |") ;
    NSLog(@"%-31s",[name UTF8String]) ;
    NSLog(@"%-31s",[email UTF8String]) ;
    NSLog(@"|                              |") ;
    NSLog(@"|                              |") ;
    NSLog(@"|                              |") ;
    NSLog(@"================================");
}
-(BOOL)isEqual:(AddressCard *)theCard{
    if(self.name == theCard.name&&self.email == theCard.email)return YES;
    else return NO ;
}
-(NSComparisonResult)compareNames:(id)element {
    return [name compare:[element name]] ;         //返回NSresult ， 对比两元素的姓名    //compare是NSString类的方法
}                                                  //注意不能使用element.name? 
@end
