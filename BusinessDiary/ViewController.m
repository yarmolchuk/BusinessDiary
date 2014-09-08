//
//  ViewController.m
//  BusinessDiary
//
//  Created by Dima Yarmolchuk on 08.09.14.
//  Copyright (c) 2014 yarmolchuk. All rights reserved.
//

#import "ViewController.h"
#import "Contact.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray *arrContacts;

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;

@property (weak, nonatomic) IBOutlet UIButton *addContactBtn;
@property (weak, nonatomic) IBOutlet UIButton *showAllContact;

- (IBAction)actAddContact:(id)sender;
- (IBAction)actShowAllContactBtn:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.firstNameField.text = @"Dima";
    self.lastNameField.text = @"Yarmolchuk";
    self.phoneField.text = @"+380688454876";
    self.emailField.text = @"yarmolchuk@gmail.com";
    
    self.arrContacts = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)actAddContact:(id)sender
{
    if (self.firstNameField.text.length && self.lastNameField.text.length && self.phoneField.text.length) {
        
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        
        [params setObject:self.firstNameField.text ? self.firstNameField.text : @"Dima" forKey:@"firstName"];
        [params setObject:self.lastNameField.text ? self.lastNameField.text : @"Yarmolchuk" forKey:@"lastName"];
        [params setObject:self.phoneField.text ? self.phoneField.text : @"+380688454876" forKey:@"phone"];
        [params setObject:self.emailField.text ? self.emailField.text : @"Yarmolchuk@gamil.com" forKey:@"email"];
        
        Contact *contact = [Contact createContact:params];
        [self.arrContacts addObject:contact];
        
        NSLog(@"Количество контактов в массиве %i", self.arrContacts.count);
        
        self.firstNameField.text = @"";
        self.lastNameField.text = @"";
        self.phoneField.text = @"";
        self.emailField.text = @"";
    }
    else {
        NSLog(@"Заполните обезательные поля");
        
        self.firstNameField.text = @"Stas";
        self.lastNameField.text = @"Kaliberov";
        self.phoneField.text = @"+380686453436";
        self.emailField.text = @"ios@apple.com";
    }
}

- (IBAction)actShowAllContactBtn:(id)sender
{
    for (Contact *item in self.arrContacts) {
        
        NSString *mgs = [NSString stringWithFormat:@"Имя контакта: %@ \n Фамилия контакта:%@ \n Телефон контакта: %@ \n E-mail: %@",
                         item.firstName, item.lastName, item.phone, item.email ];
        NSLog(@"%@", mgs);
    }
}

@end

/*
 1. Менеджер контактов
 2. Менеджер дел
 3. Список покупок
 4. Список дел
*/