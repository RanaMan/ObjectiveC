//
//  main.m
//  NameCompare
//
//  Created by Rana Puri on 2013-08-06.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        //Read in a file as a huge String
        
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                          encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        NSString *wordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        //Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
        NSLog(@"There are %lu proper names", [names count]);
        
        int counting=0;
        //Iterate through the names
        for(NSString *name in names){
            //NSLog(@"First Name %@", name);
            //Iterate through the words
            for(NSString *word in words){
                
                if([word caseInsensitiveCompare:name] == NSOrderedSame){
                    //Found a match
                    
                    if(![name isEqualToString:word]){
                        //We know it isn't the same word
                        NSLog(@"%@ - %@",name, word);
                        counting ++;
                    }
                    //break;
                  }
            }
            
            
        }
        NSLog(@"Count on the names which are words %d",counting);
        
    }
    return 0;
}

