//
//  BNRPortfolio.m
//  Stocks
//
//  Created by BX_mbp on 15/3/16.
//  Copyright (c) 2015年 BX_mbp. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"

@interface BNRPortfolio ()
{
    NSMutableArray *_holdings;
}

@end


@implementation BNRPortfolio

- (void) setHoldings:(NSArray *)h {
    _holdings = [h mutableCopy];
}

- (NSArray *)holdings {
    return [_holdings copy];
}

- (void) addStock:(BNRStockHolding *)stock {
    if (_holdings == nil) {
        _holdings = [[NSMutableArray alloc]init];
    }
    [_holdings addObject:stock];
    
}

- (void)removeHolding:(unsigned int)index {
    if (index < _holdings.count) {
        [_holdings removeObjectAtIndex: index];
    }
    else {
        NSLog(@"Index out of range or no holdings available");
    }
}

- (float)totalValue {
    float sumValue = 0.0;
    for (BNRStockHolding *stockHold in self.holdings) {
        sumValue += [stockHold valueInDollars];
    }
    return sumValue;
}

- (NSArray *)topValueStack {
    NSSortDescriptor *topThree = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars"
                                  ascending: NO];
    NSMutableArray *newTop = [[NSMutableArray alloc]init];
    newTop = _holdings;
    [newTop sortUsingDescriptors: @[topThree]];
    NSIndexSet *top3 = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 3)];
    return [newTop objectsAtIndexes:top3];
}


@end
