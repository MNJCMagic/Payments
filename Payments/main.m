//
//  main.m
//  Payments
//
//  Created by Mike Cameron on 2018-04-13.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (true) {
            
        // gen random amount between 100 and 1000
        NSInteger dollarValue = arc4random_uniform(900) + 100;
        
            NSLog(@"Thank you for shopping at Acme.com. Your total today is $%ld. Please select your payment method:\n 1: Amazon 2: Stripe 3: Paypal 4: Apple", (long)dollarValue);
        
        //get input and convert to int
        char inputChars[255];
        fgets(inputChars, 255, stdin);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSCharacterSet *space = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *input = [inputString stringByTrimmingCharactersInSet:space];
        int val = [input intValue];
        PaymentGateway *gateway = [PaymentGateway new];
        
        
        //switch
        switch (val) {
            case 1: {
                AmazonPaymentService *amazon = [AmazonPaymentService new];
                gateway.paymentDelegate = amazon;
                [gateway processPaymentAmount:dollarValue];
                
            }
                break;
            case 2: {
                StripePaymentService *stripe = [StripePaymentService new];
                gateway.paymentDelegate = stripe;
                [gateway processPaymentAmount:dollarValue];
            }
                break;
            case 3: {
                PaypalPaymentService *payPal = [PaypalPaymentService new];
                gateway.paymentDelegate = payPal;
                [gateway processPaymentAmount:dollarValue];
            }
                break;
            case 4: {
                ApplePaymentService *apple = [ApplePaymentService new];
                gateway.paymentDelegate = apple;
                [gateway processPaymentAmount:dollarValue];
            }
                
            default: ;
                break;
        }
        
        
        //[gateway processPaymentAmount:val];
    }
    }
    return 0;
}
