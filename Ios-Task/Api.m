//
//  Api.m
//  Ios-Task
//
//  Created by vm mac on 7/8/17.
//  Copyright © 2017 smartPan. All rights reserved.
//

#import "Api.h"
#import <Foundation/Foundation.h>
@implementation Api

-(void)connect : (NSString*)urlstring{
    
    NSURL *url = [NSURL URLWithString:urlstring];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url ];

    [request setHTTPMethod:@"POST"];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
   if (error) {
   NSLog(@"%@", error);
   } else {
       [self parseResponse:data];
    //   NSString *json =[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    //   NSLog(@"%@", json);
                                                    }
                                                }];
    [dataTask resume];
    }

- (void)parseResponse:(NSData*)response {
    //NSMutableArray *results;
        NSError *error;

        NSDictionary* resultAsJSON = [NSJSONSerialization JSONObjectWithData:response options:kNilOptions error:&error];
    
    if ([resultAsJSON [@"success"] isEqualToString: @"ok"]) {
        [[NSNotificationCenter defaultCenter]
         postNotificationName:@"okResponse"
         object:self];
        
    }
    else{
        [[NSNotificationCenter defaultCenter]
         postNotificationName:@"errorResponse"
         object:self];
        
    }
    
    
        
    }


@end



