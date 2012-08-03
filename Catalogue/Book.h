//
//  Book.h
//  Catalogue
//
//  Created by kcfancher on 8/3/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import "Item.h"

@interface Book : Item

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;

// A custom class method to simplify the creation of a new Book instance
+ (Book *)bookWithTitle:(NSString *)title author:(NSString *)author price:(float)price identificationNumber:(int)idNum;

@end
