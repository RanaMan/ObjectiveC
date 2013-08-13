//
//  Asset.m
//  BMITime
//
//  Created by Rana Puri on 2013-08-12.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize lable, resaleValue, holder;


-(void) dealloc{
    NSLog(@" Deallocating %@", self);
}

-(NSString *)description{
    //Is holder non-nill
    
    if(![self holder]){
        return [NSString stringWithFormat:@"<%@ $%d, assigned to %@", [self lable],[self resaleValue], [self holder]];
                }else{
        return [NSString stringWithFormat:@"<%@ $%d, unssigned", [self lable],[self resaleValue]];                    
                }
}

@end
