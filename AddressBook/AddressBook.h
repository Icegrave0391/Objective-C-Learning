//
//  AddressBook.h
//  AddressBook
//
//  Created by 张储祺 on 2018/1/31.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
@interface AddressBook : NSObject

@property(copy,nonatomic)NSString *bookname ;                         //the AddressBook's name（注意"copy"
@property(nonatomic,strong) NSMutableArray *book ;                     // the set of AddressCard（注意"strong"
-(instancetype)initWithName:(NSString *) a ;
-(void) addCard:(AddressCard * ) theCard ;
-(int)entries ;
-(void) list ;
-(AddressCard *) lookup :(NSString *)Name ;                   //使用“for循环”快速枚举（仔细理解
-(void)removeCard :(AddressCard *)theCard ;
-(void)sort ;                                              //数组排序方法（仔细理解

-(void)sort_block ;                                        //使用区块排序

@end
