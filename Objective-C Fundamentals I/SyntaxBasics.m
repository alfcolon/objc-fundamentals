//
//  SyntaxBasics.m
//  Objective-C Fundamentals I
//
//  Created by Alfredo Colon on 8/29/20.
//  Copyright © 2020 Alfredo Colon. All rights reserved.
//

#import "SyntaxBasics.h"

@implementation SyntaxBasics

/*
 
 init(smallNumber smallNumber: Int, largeNumber largeNumber: NSNumber) {
    self.smallNumber = smallNumber
    self.largeNumber = largerNumber
 */
- (instancetype)initWithSmallNumber:(int)smallNumber largerNumber:(NSNumber *)largeNumber
{
    // Initialize the NSObject portion of this class
    // self = super.init()
    self = [super init];
    if (self != nil) {
        // self.smallNumber = smallNumber
        _smallNumber = smallNumber;
        _largeNumber = largeNumber;
    }
    return self;
}

- (void)explorePrimitives {
    //
    // Primitives - number types
    //
    NSLog(@"---------Primitives----------");
    // Integer
    // 4 bytes wide
    int age = 34;
    NSLog(@"Hello1 You are %d years old.", age);
    
    // Long Integer
    // 8 bytes wide -9,223,372,036,854,775,808 the !thatNumber - 1
    long aLong = 9223372036854;
    NSLog(@"%ld", aLong);
    
    // Single precision floating-point, 32-but number
    float aFloat = -21.09f;
    NSLog(@"%f", aFloat);
    NSLog(@"%.2f", aFloat);
    
    // Double precisioin floating-point, 64-bit number
    double aDouble = -21.09;
    NSLog(@"%.2f", aDouble);
    
    // Boolean, only two value choices, YES for true, NO for false
    BOOL isOn = 0;
    NSLog(@"%@", isOn ? @"YES" : @"NO");
    
    //
    // MATH
    //
    
    // All standard arithmetic operators applu: +, -, *, /, %
    
    // Integer division, result is alwats a whole number and not rounded
    int integerResult = 5 / 4;
    NSLog(@"Integer division: %d", integerResult);
    
    // Double division, 1 double and 1 int operand, result is promoted to double
    double doubleResult = 5.0 / 4;
    NSLog(@"Floating-point division: %f", doubleResult);
    
    // Floating piint imprecision
    // Print staements show floating point numbers aten't as precise as they appear
    NSLog(@"%.17f", .1);
    NSLog(@"%.17f", 4.2 - 4.1); // actual answer: 0.10000000000000053
    
    //
    // NSInteger
    //
    
    // autosizes itself based on current platform
    NSInteger anInteger = -6;
    NSUInteger aPositiveInteger = 8;
    NSLog(@"anInteger: %ld", (long)anInteger);
    NSLog(@"aPositiveInteger: %ld", (long)aPositiveInteger);
    
    NSLog(@"---------End of Primitives----------");
}

- (void)exploreObjects
{
    //
    // Objects (class-based types)
    //
    NSLog(@"---------Objects----------");
    // NSString = object
    // Swift String = struct
    
    NSString *lambda = @"Lambda School";
    NSLog(@"%@", lambda);
    
    // String concatenation/interpolation
    
    // Swift
    // let width = 94
    // let lael = "The width is \(width)"
    
    NSString *label = @"The width is";
    int width = 94;
    NSString *widthLabel = [NSString stringWithFormat: @"%@ %d", label, width];
    NSLog(@"%@", widthLabel);
    
    // ID type used to store an object of any type
    // Swift
    // let anyObject: AnyObject = "Hello"
    
    id mysteryObject = @"An NSString object";
    NSLog(@"%@", [mysteryObject description]);
    mysteryObject = @{@"model": @"Ford", @"year": @1967}; //Swift ["key": "value"]
    NSLog(@"%@", [mysteryObject description]);
    NSLog(@"---------End Objects----------");
}

- (void)exploreCollectionsWithArray:(NSArray *)shipCaptains
{
    NSLog(@"---------Collections----------");
    
    // Array - an order collection of object, immutable
    NSLog(@"Serenity: %@", shipCaptains[0]);
    
    // Array Comparisions
    NSArray *captains = @[];
    if ([shipCaptains isEqualToArray: captains]) {
        NSLog(@"Arrays are equal!");
    } else {
        NSLog(@"Arrays are not equal!");
    }
    
    // For loop syntax for iterating a collection
    // For (initial condition; end condition; increment/decrement)
    for (int i = 0; i < shipCaptains.count; i++) {
        NSLog(@"Captain of the bridge");
    }
    
    // for in loop
    for (NSString *name in shipCaptains) {
        NSLog(@"%@", name);
    }
    
    // Check element for membership
    if ([shipCaptains containsObject:@"Kathyn Janeway"]) {
        NSLog(@"U.S.S Voyager reporting for duty.");
    }
    
    // Find index of an object
    NSUInteger index = [shipCaptains indexOfObject: @"James T. Kirk"];
    if (index == NSNotFound) {
        NSLog(@"Captain not found!");
    } else {
        NSLog(@"Captain %@ was found at index %lu!", shipCaptains[index], (unsigned long)index);
    }
    
    // Swift
    // let = constant = NSArray
    // let pi = 3.14
    // var = variable = NSMutableArray
    // var myArray = [1,2,3] - mutable array in swift
    
    // NSArray = set once, and constant
    // NSMutableArray = can add or remove elements
    
    // Same as above NSArray type, except can be mutated
    // not: array literal synta can;t be use for NSMutableArray
    NSMutableArray *mutableShipCaptains = [[NSMutableArray alloc] initWithObjects:@"John Doe", @"Jane Doe", nil];
    [mutableShipCaptains addObject:@"Han Solo"];
    [mutableShipCaptains addObjectsFromArray:@[@"Yoda"]];
    
    NSLog (@"%@", mutableShipCaptains);
    
    // Dictionary - an unorded collection of objects
    
    NSDictionary *occupations = @{@"Malcom": @"Captain"};
    NSLog(@"%@", [occupations objectForKey:@"Malcolm"]);
    NSLog(@"%@", occupations[@"Kaylee"]);
    
    
    // NSMutableDictionary - same as above, but can be mutated
    // note: dictionary literal syntax can't be used for NSMutableDictionary
    NSMutableDictionary * mutableOccupations = [occupations mutableCopy];
    [mutableOccupations setObject:@"Public Relations" forKey:@"Jayne"];
    mutableOccupations[@"Jean-Luc Picard"] = @"Captain";
    
    NSLog(@"%@", mutableOccupations);
    
    NSLog(@"---------End Collections----------");
}

- (void)exploreNumbers
{
    //
    // NSNumber, a lightwight wrapper arpund the number primitices
    //
    NSLog(@"---------NSNumber----------");
    
    // Once conerted to NSNumber, value can be converted back
    // to a primitive with methods shown below
    
    NSNumber *aBool = [NSNumber numberWithBool: NO];
    NSLog(@"%@", [aBool boolValue] ? @"YES" : @"NO");
    
    NSNumber *intAsNumber = [NSNumber numberWithInt:2147483647];
    NSLog(@"%i", [intAsNumber intValue]);

    NSNumber *longAsNumber = [NSNumber numberWithLong: 9222372036854775807];
    NSLog(@"%li", [longAsNumber longValue]);
    
    NSNumber *floatAsNumber = [NSNumber numberWithFloat: 26.99f];
    NSLog(@"%f", [floatAsNumber floatValue]);
    
    NSNumber *doubleAsNumber = [NSNumber numberWithDouble: 26.99f];
    NSLog(@"%f", [doubleAsNumber doubleValue]);
        
    // It's also possible to convert a NSNumber to a string
    NSString *asString = [self.largeNumber stringValue];
    NSLog(@"%@", asString);
          
    // The following literal shortcuts allow for easier NSNumber
    // initialization compared to the above methods
    NSNumber *boolLiteral = @NO;
    NSNumber *intLiteral = @42;
    NSNumber *longLiteral = @9223372036854775807L;
    NSNumber *floatLiteral = @26.99;
    NSNumber *doubleLiteral = @26.99;
    NSLog(@"bool: %@, int: %@, long: %@, float: %@, double: %@", boolLiteral, intLiteral, longLiteral, floatLiteral, doubleLiteral);
    
    NSNumber *aNumber = @12.5;
    NSNumber *anotherNumber = @12.5;
    
    // Bccause both values are objects == doesn't work in the usual way
    if ([anotherNumber isEqualToNumber:aNumber]) {
        NSLog(@"Numbers are equal");
    } else {
        NSLog(@"Numbers are not equal");
    }
    NSLog(@"---------End NSNumber----------");
}

@end
