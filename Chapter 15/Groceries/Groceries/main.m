//
//  main.m
//  Groceries
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
        
        NSMutableArray *groceryList = [NSMutableArray array];
        
        NSString *Lettuce = @"Lettuce";
        NSString *lunchMeat = @"Lunch Meat";
        NSString *Bread = @"Bread";
        NSString *Tomatoes = @"Tomoates";
        NSString *Milk = @"Milk";
        NSString *Yougour = @"Yougourt";
        NSString *Cheese = @"Cheese";
        
        [groceryList addObject:Lettuce];
        [groceryList addObject:lunchMeat];
        [groceryList addObject:Bread];
        [groceryList addObject:Tomatoes];
        [groceryList addObject:Milk];
        [groceryList addObject:Yougour];
        [groceryList addObject:Cheese];
        
        for(NSString *s in groceryList){
            NSLog(@"Item is: %@", s);
        }
        
    }
    return 0;
}

