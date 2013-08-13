//
//  Person.h
//  BMITime
//
//  Created by Rana Puri on 2013-08-11.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

-(float) heightInMeters;
-(int) weightInKilos;
-(void) setHeightInMeters:(float)h;
-(void) setWeightInKilos:(int)w;

-(float) bodyMassIndex;

@end
