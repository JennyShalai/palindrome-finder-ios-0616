//
//  AppDelegate.m
//  objc-palindrome-inspector-ios-0616
//
//  Created by Jenny on 6/11/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *string1 = @"asdfghjklkjhgfdsa";
    NSString *string2 = @"asdfghjklkjhgfds_";
    NSString *string3 = @"aaaaaaa";
    
    PalindromDetector *palindrom = [[PalindromDetector alloc] init];
    
    BOOL result1 = [palindrom stringIsPalindrome:string1];
    BOOL result2 = [palindrom stringIsPalindrome:string2];
    BOOL result3 = [palindrom stringIsPalindrome:string3];
    
    NSLog(@"result 1 is: %d", result1);
    NSLog(@"result 2 is: %d", result2);
    NSLog(@"result 3 is: %d", result3);
    
    return @"error";
    
}

@end
