//
//  PaymentGateway.m
//  Payments
//
//  Created by Mike Cameron on 2018-04-13.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)amount {
    
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"Sorry, we can't process your payment");
    }
}

@end



