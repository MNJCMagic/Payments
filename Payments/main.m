//
//  main.m
//  Payments
//
//  Created by Mike Cameron on 2018-04-13.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // gen random amount between 100 and 1000
        NSInteger dollarValue = arc4random_uniform(900) + 100;
        
        NSLog(@"Thank you for shopping at Acme.com. Your total today is $%ld. Please select your payment method:\n 1: Paypal 2: Stripe 3: Amazon", (long)dollarValue);
        
        //get input and convert to int
        char inputChars[255];
        fgets(inputChars, 255, stdin);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSCharacterSet *space = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *input = [inputString stringByTrimmingCharactersInSet:space];
        int val = [input intValue];
        NSLog(@"%d", val);
    }
    return 0;
}
