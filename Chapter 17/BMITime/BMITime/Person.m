//
//  Person.m
//  BMITime
//
//  Created by Rana Puri on 2013-08-11.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "Person.h"

@implementation Person


-(float)heightInMeters{
    return heightInMeters;
}

-(int)weightInKilos{
    return weightInKilos;
}

-(void)setHeightInMeters:(float)h{
    heightInMeters =h;
}

-(void)setWeightInKilos:(int)k{
    weightInKilos =k;
}

-(float)bodyMassIndex{
    return weightInKilos/(heightInMeters*heightInMeters);
}

@end
