//
//  BNRPortfolio.h
//  Stocks
//
//  Created by BX_mbp on 15/3/16.
//  Copyright (c) 2015年 BX_mbp. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject 
@property (nonatomic, copy) NSArray *holdings;

- (void)addStock:(BNRStockHolding *)stock;
- (void)removeHolding:(unsigned int)index;
- (NSArray *)topValueStack;
- (float)totalValue;

@end
