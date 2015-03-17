//
//  main.m
//  Stocks
//
//  Created by BX_mbp on 15/3/16.
//  Copyright (c) 2015年 BX_mbp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *firstHold = [[BNRStockHolding alloc]init];
        BNRStockHolding *secondHold = [[BNRStockHolding alloc]init];
        BNRForeignStockHolding *thirdHold = [[BNRForeignStockHolding alloc]init];
        BNRPortfolio *holdColletion = [[BNRPortfolio alloc]init];
        
        firstHold.purchaseSharePrice = 2.30;
        firstHold.currentSharePrice = 4.50;
        firstHold.numberOfShares = 40;
        firstHold.symbol = @"XYZ";
        
        secondHold.purchaseSharePrice = 2.30;
        secondHold.currentSharePrice =  4.50;
        secondHold.numberOfShares = 40;
        secondHold.symbol = @"ABC";
        
        thirdHold.purchaseSharePrice = 2.30;
        thirdHold.currentSharePrice = 4.60;
        thirdHold.numberOfShares = 40;
        thirdHold.conversionRate = 0.94;
        thirdHold.symbol = @"LMN";
        
        [holdColletion addStock: firstHold];
        [holdColletion addStock: secondHold];
        [holdColletion addStock: thirdHold];
        float value = [holdColletion totalValue];
        NSLog(@"The stock value is: %f", value);
        NSArray *topValueStack = [holdColletion topValueStack];
        for (BNRStockHolding *stock in topValueStack) {
            float value1 = [stock valueInDollars];
            NSLog(@"The stock value is: %f", value1);
        }
        
        
    }
    return 0;
}
