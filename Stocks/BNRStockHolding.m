//
//  BNRStockHolding.m
//  Stocks
//
//  Created by BX_mbp on 15/3/16.
//  Copyright (c) 2015年 BX_mbp. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars {
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars {
    return [self currentSharePrice] * [self numberOfShares];
}


@end
