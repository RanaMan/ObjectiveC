//
//  Portfolio.h
//  Stocks
//
//  Created by Rana Puri on 2013-08-12.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;
@interface Portfolio : NSObject{
    NSMutableArray *stockListing;
}

@property NSMutableArray *stockListing;

-(void)addSharesToPortfolio:(StockHolding *)stock;

-(float)portfolioValue;

@end
