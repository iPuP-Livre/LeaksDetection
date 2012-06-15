//
//  MyObject.h
//  LeaksDetection
//
//  Created by Marian PAUL on 29/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyObject : NSObject
{
    NSString *_aString;
}
@property (nonatomic, strong) NSNumber *aNumber;

- (id) initWithAString:(NSString*)string;
@end
