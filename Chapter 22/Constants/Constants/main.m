//
//  main.m
//  Constants
//
//  Created by Rana Puri on 2013-08-12.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"\u03c0 is %f",M_PI);
        
        NSLocale *here =[NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        
        NSLog(@"Money is %@", currency);
        
    }
    return 0;
}

