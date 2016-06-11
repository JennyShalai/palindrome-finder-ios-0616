//
//  PalindromDetector.m
//  objc-palindrome-inspector-ios-0616
//
//  Created by Jenny on 6/11/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "PalindromDetector.h"

@implementation PalindromDetector

// // PUBLIC METHOD // //

- (BOOL)stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        string = [string stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    NSString *spaceless = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    return stringIsEqualToReverse;
}


// // PRIVATE METHOD // //

- (NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    return result;
}

@end
