//
//  BNRStockHolding.h
//  Stocks
//
//  Created by BX_mbp on 15/3/16.
//  Copyright (c) 2015年 BX_mbp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic) NSString *symbol;

- (float)costInDollars;
- (float)valueInDollars;
@end
