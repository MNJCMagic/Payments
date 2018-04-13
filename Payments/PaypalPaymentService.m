//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Mike Cameron on 2018-04-13.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "PaypalPaymentService.h"



@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger)amount {
    
    NSLog(@"Payment of $%ld processed by PayPal", amount);
    
}

-(BOOL)canProcessPayment {
    int i = arc4random_uniform(2);
    if (i == 0) {
        return NO;
    }
    return YES;
}

@end
