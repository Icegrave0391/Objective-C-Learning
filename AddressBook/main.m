//
//  main.m
//  AddressBook
//
//  Created by 张储祺 on 2018/1/31.
//  Copyright © 2018年 张储祺. All rights reserved.
//
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...)
#endif



#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aname = @"ChuKei Zheung" ;
        NSString *aemail = @"icegrave0391@hust.edu.cn" ;
        NSString *bname = @"Jeff Zhao" ;
        NSString *bemail = @"Jeff23101719@gmail.com" ;
        NSString * cname = @"Golden Druid" ;
        NSString *cemail = @"newbie@hust.edu.cn" ;
        NSString *dname = @"Crafty Rogue" ;
        NSString *demail = @"Fantasy@hust.edu.cn" ;
        
        AddressCard *card1 = [[AddressCard alloc] init] ;
        AddressCard *card2 = [[AddressCard alloc] init] ;
        AddressCard *card3 = [[AddressCard alloc] init] ;
        AddressCard *card4 = [[AddressCard alloc] init] ;
        
        AddressBook *mybook = [[AddressBook alloc] initWithName:@"Chuqi's Book"] ;
        
        NSLog(@"Entries in address book after creation :%i",[mybook entries]) ;
        
        [card1 setName:aname andEmail:aemail] ;
        [card2 setName:bname andEmail:bemail] ;
        [card3 setName:cname andEmail:cemail] ;
        [card4 setName:dname andEmail:demail] ;
        
        [mybook addCard:card1] ;
        [mybook addCard:card2] ;
        [mybook addCard:card3] ;
        [mybook addCard:card4] ;
        
        NSLog(@"Entires in address book after adding cards :%i",[mybook entries]) ;
        
        [mybook list] ;
        
        AddressCard * search = [mybook lookup:@"ChuKei Zheung"] ;
        if(search != nil)[search print] ;
        else NSLog(@"Not Found!") ;
        
  //      [mybook removeCard:search] ;
  //      [mybook list] ;
        
        [mybook sort_block] ;   //[mybook sort] ;
        [mybook list] ;
        
    
    }
    return 0;
}
