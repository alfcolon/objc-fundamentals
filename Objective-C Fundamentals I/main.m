//
//  main.m
//  Objective-C Fundamentals I
//
//  Created by Alfredo Colon on 8/29/20.
//  Copyright © 2020 Alfredo Colon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SyntaxBasics.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        SyntaxBasics *basics = [[SyntaxBasics alloc]
                                initWithSmallNumber:42
                                largerNumber:@2398094238];
        
        double myNumber = 42.01245;
        
        NSLog(@"%f", myNumber);
        NSLog(@"%.4f", myNumber);
        
        [basics explorePrimitives];
        [basics exploreObjects];
        [basics exploreCollectionsWithArray:@[@"Malcome Reynolds",
                                              @"Jean-Luc Picard",
                                              @"James T. Kirk",
                                              @"Kathryn Janeway"]];
        [basics exploreNumbers];
    }
    return 0;
}
