//
//  AddressBook.m
//  AddressBook
//
//  Created by 张储祺 on 2018/1/31.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize bookname, book ;
-(instancetype)initWithName:(NSString *)a{
    self = [super init] ;
    if(self){
        self.bookname = [NSString stringWithString:a] ;
        self.book = [NSMutableArray array] ;
    }
    return self ;
}
-(void)addCard:(AddressCard *)theCard{
    [self.book addObject:theCard] ;
}
-(int)entries {
    return (int)[self.book count] ;
}
-(void) list{
    NSLog(@"========Contents Of: %@ ========",bookname);
    for(AddressCard *theCard in book)
        NSLog(@"%-20s     %-32s",[theCard.name UTF8String],[theCard.email UTF8String]);
}
-(AddressCard *)lookup:(NSString *)Name{
    for(AddressCard * aCard in book)
        if([aCard.name caseInsensitiveCompare:Name] == NSOrderedSame)
            return aCard ;
    return nil ;
}

-(void) removeCard:(AddressCard *)theCard{
    [self.book removeObjectIdenticalTo:theCard] ;
}

-(void)sort{
    [book sortUsingSelector:@selector(compareNames:)] ;    //数组排序（使用selector参数和compareName方法）
}
-(void)sort_block{                                        //数组排序—使用区块排序
    [book sortUsingComparator:^(id obj1,id obj2){
        return [[obj1 name] compare:[obj2 name]] ;
    }] ;
}
@end
