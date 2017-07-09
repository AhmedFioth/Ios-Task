//
//  registerPage.m
//  Ios-Task
//
//  Created by vm mac on 7/7/17.
//  Copyright © 2017 smartPan. All rights reserved.
//

#import "registerPage.h"

@interface registerPage ()

@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *pass;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *mobile;
@property (weak, nonatomic) IBOutlet UISegmentedControl *gender;

@end

@implementation registerPage

- (void)viewDidLoad {
    [self.gender setSelectedSegmentIndex:0];
}

- (IBAction)reg:(id)sender {
    
}
- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
