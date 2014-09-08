//
//  Contact.h
//  BusinessDiary
//
//  Created by Dima Yarmolchuk on 08.09.14.
//  Copyright (c) 2014 yarmolchuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;

@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *phone;

+ (id)createContact:(NSDictionary *)params;

@end
