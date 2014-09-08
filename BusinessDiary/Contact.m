//
//  Contact.m
//  BusinessDiary
//
//  Created by Dima Yarmolchuk on 08.09.14.
//  Copyright (c) 2014 yarmolchuk. All rights reserved.
//

#import "Contact.h"

@interface Contact ()



@end

@implementation Contact

+ (id)createContact:(NSDictionary *)params
{
    Contact *item =[[Contact alloc]init];
    
    item.firstName = [params objectForKey:@"firstName"];
    item.lastName = [params objectForKey:@"lastName"];
    item.phone = [params objectForKey:@"phone"];
    item.email = [params objectForKey:@"email"];
    
    return item;
}

@end
