//
//  ViewController.m
//  Ios-Task
//
//  Created by vm mac on 7/7/17.
//  Copyright © 2017 smartPan. All rights reserved.
//

#import "loginPage.h"
#import "welcomePage.h"
#import "Api.h"
#import "SWRevealViewController.h"
@interface loginPage ()


@property (weak, nonatomic) IBOutlet UITextField *usernameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *passOutlet;

@end

@implementation loginPage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.passOutlet.secureTextEntry = YES;

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(okResponse)
                                                 name:@"okResponse"
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(errorResponse)
                                                 name:@"errorResponse"
                                               object:nil];
}


- (IBAction)login:(id)sender {
    NSString * urlstring =[NSString stringWithFormat:@"%@%@%@=%@&%@=%@",api_baseUrl,api_login,api_username,self.usernameOutlet.text,api_password,self.passOutlet.text];
        Api *api = [[Api alloc]init];
        [api connect:urlstring];
}
- (IBAction)reg:(id)sender {
}

-(void)okResponse {
    
        dispatch_async(dispatch_get_main_queue(), ^{
       
            
            SWRevealViewController *dest = [self.storyboard instantiateViewControllerWithIdentifier:@"loginid"];
            dest.name = self.usernameOutlet.text;
            [self presentViewController:dest animated:YES completion:nil];

            
            
        });
    

}

-(void)errorResponse{
    dispatch_async(dispatch_get_main_queue(), ^{


    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"something happened , please try again" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okbtn = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil ];
    [alert addAction:okbtn];
    [self presentViewController:alert animated:YES completion:nil];
     
         });
    }
@end
