//
//  main.m
//  Stringz
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
        
        NSMutableString *str = [[NSMutableString alloc] init ];
        
        for (int i=0; i<10; i++)
        {
            [str appendString:@"Arron is cool\n"];
            
        }
        
        //Declare a pointer to an NSErrir object but don't instantiate it
        //The NSError instance will only be created if there is, in facema an error
        
        NSError *error = nil;
        
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
                             atomically:YES
                             encoding:NSUTF16StringEncoding
                             error:&error];
        
        //Test the returned BOOL and wuert the error if the write failed.
        if(success){
            NSLog(@"Done writing /tmp/cool.txt");
        }else{
            NSLog(@"Writing the file failed %@", [error localizedDescription]);
        }
    }
    return 0;
}

