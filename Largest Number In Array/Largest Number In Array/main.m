//
//  main.m
//  Largest Number In Array
//
//  Created by Zach Smoroden on 2016-04-18.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayHelper : NSObject

+(NSNumber *)findLargest:(NSArray*)array;


@end

@implementation ArrayHelper

+(NSNumber *)findLargest:(NSArray*)array {
    NSNumber *largest = array[0];
    
    if ([array count] == 0 || array == nil) {
        return nil;
    }
    
    for (NSNumber *number in array) {
        if (number > largest) {
            largest = number;
        }
    }
    
    return largest;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *numbers = @[@44, @5, @6];
        
        
        NSNumber *number = [ArrayHelper findLargest:numbers];
        NSLog(@"The largest number is: %@", number);
        
        
    }
    return 0;
}
