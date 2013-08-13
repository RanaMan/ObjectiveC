//
//  ForgientStockHoldings.m
//  Stocks
//
//  Created by Rana Puri on 2013-08-11.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "ForgientStockHoldings.h"

@implementation ForgientStockHoldings

@synthesize converstionRate;

-(float)costInDollars{
    return [self numberOfShares] * [self purchaseSharePrice] * [self converstionRate];
}


-(float)valueInDollars{
    return [self numberOfShares] * [self currentSharePrice] * [self converstionRate];
}


@end
