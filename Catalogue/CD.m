//
//  CD.m
//  Catalogue
//
//  Created by kcfancher on 8/3/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import "CD.h"

@implementation CD
@synthesize artist = _artist;
@synthesize label = _label;

// A Class method (remember this can only be called directly on CD)
// Not on an instance of CD, such as CD *item
+ (CD *)cdWithArtist:(NSString *)artist label:(NSString *)label price:(float)price identificationNumber:(float)idNum
{
    // Create a new instance of CD
    CD *newCD = [[CD alloc] init];
    
    // Set the properties of newCD
    newCD.artist = artist;
    newCD.label = label;
    newCD.price = price;
    newCD.identificationNumber = idNum;
    
    // Returning the newly created newCD
    return newCD;
}

@end
