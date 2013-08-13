//
//  main.m
//  Stocks
//
//  Created by Rana Puri on 2013-08-11.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "ForgientStockHoldings.h"
#include "Portfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        StockHolding *BCE = [[StockHolding alloc] init];
        [BCE setCurrentSharePrice:60.23];
        [BCE setNumberOfShares:49];
        [BCE setPurchaseSharePrice:32.29];

        StockHolding *CNR = [[StockHolding alloc] init];
        [CNR setCurrentSharePrice:54.23];
        [CNR setNumberOfShares:10];
        [CNR setPurchaseSharePrice:65.23];
        
        StockHolding *XIU = [[StockHolding alloc] init];
        [XIU setCurrentSharePrice:552];
        [XIU setNumberOfShares:3000];
        [XIU setPurchaseSharePrice:18.29];
        
        ForgientStockHoldings *APPL = [[ForgientStockHoldings alloc] init];
        [APPL setCurrentSharePrice:400];
        [APPL setNumberOfShares:30];
        [APPL setPurchaseSharePrice:350];
        [APPL setConverstionRate:.95];
        
        
        Portfolio *stockListing = [[Portfolio alloc]init];
        [stockListing addSharesToPortfolio:BCE];
        [stockListing addSharesToPortfolio:CNR];
        [stockListing addSharesToPortfolio:XIU];
        [stockListing addSharesToPortfolio:APPL];
        
        NSLog(@"Value of the portfolio is %f", [stockListing portfolioValue]);
        
    }
    return 0;
}

