//
//  SyntaxBasics.h
//  Objective-C Fundamentals I
//
//  Created by Alfredo Colon on 8/29/20.
//  Copyright © 2020 Alfredo Colon. All rights reserved.
//

/* .h files are like protocol files in that we define properties and methods for the class, but don't write the actual implemtantions or code for them
*/

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*
 class SyntaxBasics: NSObject {
    
 var smallNumber: Int
 
 */

@interface SyntaxBasics : NSObject

/*
 Objc-C's @property by default creates 3 things:
    1. Setter
        -(void)setSmallNumber
    2. Getter
        -(int)smallNumber
    3. Instance variable
        -_smallNumber
 */

//MARK: - Properties

/*
 Two kinds of proprties in Objc-C
    - primitive
    - objects
 */

@property int smallNumber;
@property NSNumber *largeNumber;

//MARK: - Methods

//func init(smallNumber smallNumber: Int, largeNumber largeNumber: NSNumber
- (instancetype)initWithSmallNumber: (int)smallNumber largerNumber: (NSNumber *)largeNumber;

- (void)explorePrimitives;
- (void)exploreObjects;
- (void)exploreCollectionsWithArray: (NSArray *)shipCaptains;
- (void)exploreNumbers;

@end

NS_ASSUME_NONNULL_END
