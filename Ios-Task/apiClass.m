//
//  api.m
//  Ios-Task
//
//  Created by vm mac on 7/8/17.
//  Copyright © 2017 smartPan. All rights reserved.
//

#import <Foundation/Foundation.h>
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

@interface apiClass : NSObject

@end

@implementation apiClass

-(NSString *)connect : (NSString*)urlstring{
    
     NSURL *url = [NSURL URLWithString:urlstring];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10.0];
    
    [request setHTTPMethod:@"POST"];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
                   NSLog(@"%@", error);
         } else {
          NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
          NSLog(@"%@", httpResponse);
                  }
         }];
    [dataTask resume];
   return @"here";
}


@end



