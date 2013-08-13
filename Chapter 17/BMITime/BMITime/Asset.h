//
//  Asset.h
//  BMITime
//
//  Created by Rana Puri on 2013-08-12.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//
#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *lable;
    unsigned int resaleValue;
    __weak Employee *holder;
}

@property (strong) NSString *lable;
@property (weak) Employee *holder;
@property unsigned int resaleValue;

@end
