//
//  ViewController.m
//  Catalogue
//
//  Created by kcfancher on 8/3/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "CD.h"
#import "ItemCell.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize itemsTableView;
@synthesize items = _items;

- (void)viewDidLoad
{
    [super viewDidLoad];
	    
    self.items = [NSMutableArray array];
        
    [self.items addObject:[Book bookWithTitle:@"Objective-C" author:@"Keli" price:1.99 identificationNumber:100]];
    [self.items addObject:[Book bookWithTitle:@"Objective-C 2.0" author:@"Keli" price:1.99 identificationNumber:100]];

}

- (void)viewDidUnload
{
    [self setItemsTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

// Here are the two required UITableViewDataSource Methods

// Every TableView can have a number of different sections
// An example is the letter heading in the Contacts application
// This method returns the number of rows that are in each section
// For an app with no sections this method just returns the total number of rows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // We want there to be one row for each item in our items array
    return self.items.count;
}

// tableView:cellForRowAtIndexPath returns a UITableViewCell that has been customized
// for each tableViewCell in our TableView (This method is called once per row/cell in our tableview)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // We first have to create a UITableViewCell instance
    // We use UITableView's insntance method -(UITableViewCell *)dequeueReusableCellWithIdentifier to
    // Return a TableViewCell that is memory efficient
    // We pass it the same string that we have used as an identifier in our Interface
    ItemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ItemCell"];
    
    // First we have to get the Item for the current row
    // IndexPath is an object that has both a section and a row property
    // Our catalogue stores both Book's and CD's - but since both are subclasses
    // of Item we can declare it universally as a Item
    Item *instance = [self.items objectAtIndex:indexPath.row];
    
    
    // Set the value of our cell's textLabel
    if ([instance isMemberOfClass:[Book class]]) 
    {
        Book *book = (Book *) instance;
        //cell.textLabel.text = book.title;
        cell.mainLabel.text = book.title;
        cell.smallLabel.text = book.author;
        cell.rightLabel.text = [NSString stringWithFormat:@"$%.02f", book.price];
        cell.itemImage.image = [UIImage imageNamed:@"book.png"];
    }
    else if ([instance isMemberOfClass:[CD class]])
    {
        CD *cd = (CD *) instance;
        //cell.textLabel.text = cd.label;
        cell.mainLabel.text = cd.label;
        cell.smallLabel.text = cd.artist;
        cell.rightLabel.text = [NSString stringWithFormat:@"$%.02f", cd.price];
        cell.itemImage.image = [UIImage imageNamed:@"cd.png"];
    }
    //cell.textLabel.text = [NSString stringWithFormat:@"$%.02f",instance.price];
        
    return cell;
}













@end
