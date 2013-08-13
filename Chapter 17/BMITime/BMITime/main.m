//
//  main.m
//  BMITime
//
//  Created by Rana Puri on 2013-08-11.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        //Create a list of employees
        NSMutableArray *employees = [NSMutableArray array];
        
        for(int i=0;i<10;i++){
            
            //Create an Instance of Employee
            Employee *person = [[Employee alloc] init];
            
            //Give the instance variables neat values
            [person setEmployeeID:i];
            [person setHeightInMeters:1.0 + i*0.1];
            [person setWeightInKilos:i*30];

            //Put the employee into the array
            [employees addObject:person];
            
        }
        
        NSMutableArray *allAssets = [NSMutableArray array];
        
        //Create 10 Assets
        for(int i=0;i<10;i++){
            
            //Create and asset
            Asset *asset = [[Asset alloc]init];
            
            //Give it an interesting label
            [asset setLable:[NSString stringWithFormat:@"Laptop %d",i]];
            [asset setResaleValue:i*17];
            
            //Get a random number between 0 and 9
            NSUInteger randomIndex = random() % [employees count];
            
            //assigne the asset to the employee;
            Employee *temp = [employees objectAtIndex:randomIndex];
            [temp addAssignedAssets:asset];
            
            [allAssets addObject:asset];
        }

        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];

        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa,ei,nil]];
        
        NSLog(@"Employees %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeLastObject];
        
        NSLog(@"giving up ownership of array");
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat: @"holder.valueOfAssets>70"];
        //NSArray *toBeReclaimed = [allAssets filterUsingPredicate:predicate];
        //NSLog(@"To be relcaimed %@", toBeReclaimed)
        //toBeReclaimed =nil;
        
        //NSLog(@"AllAssets %@", allAssets);
        
        allAssets = nil;
        
        employees = nil;
        
    }
    sleep (100);
    return 0;
}

