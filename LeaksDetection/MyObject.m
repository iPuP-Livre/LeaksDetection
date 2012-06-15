//
//  MyObject.m
//  LeaksDetection
//
//  Created by Marian PAUL on 29/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject
@synthesize aNumber = _aNumber;

- (id) initWithAString:(NSString*)string
{
    self = [super init];
    if (self) {
        _aString = string; // disparition du retain
    }
    return self;
}

- (void) changeNumber
{
    self.aNumber = [[NSNumber alloc] initWithInt:4]; // disparition de l'autorelease
}

- (void) changeNumberBis
{
    NSNumber *number = [[NSNumber alloc] initWithInt:5];
    self.aNumber = number;
    // disparition du release
}

// disparition du dealloc

@end
