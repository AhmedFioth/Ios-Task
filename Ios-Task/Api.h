//
//  Api.h
//  Ios-Task
//
//  Created by vm mac on 7/8/17.
//  Copyright © 2017 smartPan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "loginPage.h"
//http://www.smartpan.com.sa:5551/AndriodAPI/login?username=asd&password=123
#define api_baseUrl @"http://www.smartpan.com.sa:5551/AndriodAPI/"
#define api_login @"login?"
#define api_reg @"register?"
#define api_name @"name"
#define api_username @"username"
#define api_password @"password"
#define api_mail @"mail"
#define api_gender @"gender"
#define api_mobile @"mobile"


@interface Api : NSObject
-(void)connect : (NSString*)urlstring;
@end
