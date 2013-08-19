//
//  main.m
//  ImageFetch
//
//  Created by Rana Puri on 2013-08-18.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSURL *url = [NSURL URLWithString:
                      @"http://www.google.com/images/logos/ps_logo2.png"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        
        if(!data){
            NSLog(@"Unable to fetch data %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The file is %lu bytes", [data length]);
        
        BOOL written = [data writeToFile:@"/tmp/google.png"options:0 error:&error];
        
        if(!written){
            NSLog(@"Unable to write to file  %@", [error localizedDescription]);
            return 1;
        }
        NSLog(@"Success");
        
    }
    return 0;
}

