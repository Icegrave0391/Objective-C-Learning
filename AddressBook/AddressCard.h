//
//  AddressCard.h
//  AddressBook
//
//  Created by 张储祺 on 2018/1/31.
//  Copyright © 2018年 张储祺. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
@property(copy, nonatomic) NSString * name , * email ;
-(void)setName:(NSString *)a andEmail:(NSString *)b ;
-(void) print ;
-(BOOL) isEqual:(AddressCard *)theCard ;
-(NSComparisonResult) compareNames :(id)element ;           //返回NSresult类型的姓名排序，用作selector方法
@end
