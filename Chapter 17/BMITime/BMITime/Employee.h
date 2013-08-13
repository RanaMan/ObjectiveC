//
//  Employee.h
//  BMITime
//
//  Created by Rana Puri on 2013-08-11.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "Person.h"
@class Asset;

@interface Employee : Person

{
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;

-(void)addAssignedAssets:(Asset *)a;
-(unsigned int)valueOfAssets;

@end
