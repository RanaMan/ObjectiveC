//
//  StockHolding.m
//  Stocks
//
//  Created by Rana Puri on 2013-08-11.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize numberOfShares;
@synthesize currentSharePrice;
@synthesize purchaseSharePrice;

-(float)costInDollars{
    return [self numberOfShares] * [self purchaseSharePrice];
}


-(float)valueInDollars{
    return [self numberOfShares] * [self currentSharePrice];
}

@end
