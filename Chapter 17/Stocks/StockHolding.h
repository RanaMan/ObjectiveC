//
//  StockHolding.h
//  Stocks
//
//  Created by Rana Puri on 2013-08-11.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}
@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

-(float) costInDollars;
-(float) valueInDollars;


@end
