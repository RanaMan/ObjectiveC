//
//  Employee.m
//  BMITime
//
//  Created by Rana Puri on 2013-08-11.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

-(float)bodyMassIndex{
    return 10.0;
}

-(void)addAssignedAssets:(Asset *)a{
        //is Assets null?
    if(!assets){
        //create the array;
        assets = [NSMutableArray array];
    }
    
    [assets addObject:a];
    [a setHolder:self];
    
    
}

-(unsigned int)valueOfAssets{
    if(!assets)
        return 0;
    
    unsigned int sum=0;
    for(Asset *a in assets){
        sum += [a resaleValue];
    }
    return sum;
}

-(NSString *) description{
    return [NSString stringWithFormat:@"<Employee%d: $%d in assets>",[self employeeID], [self valueOfAssets]];
}

-(void) dealloc{
    NSLog(@" Deallocating %@", self);
}


@end
