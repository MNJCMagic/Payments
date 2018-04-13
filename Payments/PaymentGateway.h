//
//  PaymentGateway.h
//  Payments
//
//  Created by Mike Cameron on 2018-04-13.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//
//      DELEGATOR


#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)amount;

@end

@interface PaymentGateway : NSObject

@property (weak) id<PaymentDelegate>paymentDelegate;
-(void)processPaymentAmount:(NSInteger)amount;


@end
