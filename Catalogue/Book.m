//
//  Book.m
//  Catalogue
//
//  Created by kcfancher on 8/3/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize title = _title;
@synthesize author = _author;

// A Class method (remember this can only be called directly on Book)
// Not on an instance of Book, such as Book *book
+ (Book *)bookWithTitle:(NSString *)title author:(NSString *)author price:(float)price identificationNumber:(int)idNum
{
    // Create a new instance of Book
    Book *newBook = [[Book alloc] init];
    
    // Set the properties of newBook
    newBook.title = title;
    newBook.author = author;
    newBook.price = price;
    newBook.identificationNumber = idNum;
    
    // Returning the newly created newBook
    return newBook;
}

@end
