//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by BX_mbp on 15/3/16.
//  Copyright (c) 2015年 BX_mbp. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars {
    return [self purchaseSharePrice] * [self numberOfShares] * [self conversionRate];
}

- (float)valueInDollars {
    return [self currentSharePrice] * [self numberOfShares] * [self conversionRate];
}


@end
