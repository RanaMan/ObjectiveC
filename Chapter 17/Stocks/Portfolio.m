//
//  Portfolio.m
//  Stocks
//
//  Created by Rana Puri on 2013-08-12.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

@synthesize stockListing;

-(void)addSharesToPortfolio:(StockHolding *)stock{
    if(!stockListing){
        stockListing = [NSMutableArray array];
    }
    [stockListing addObject:stock];
    
}

-(float)portfolioValue{
    if(!stockListing){
        return 0.0;
    }
    
    float sum=0;
    for(StockHolding *tempStock in stockListing){
        sum += [tempStock valueInDollars];
    }
    return sum;
}

@end
