//
//  CD.h
//  Catalogue
//
//  Created by kcfancher on 8/3/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import "Item.h"

@interface CD : Item

@property (nonatomic, strong) NSString *artist;
@property (nonatomic, strong) NSString *label;

// A custom class method to simplify the creation of a new CD instance
+ (CD *)cdWithArtist:(NSString *)artist label:(NSString *)label price:(float)price identificationNumber:(float)idNum;

@end
