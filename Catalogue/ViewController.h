//
//  ViewController.h
//  Catalogue
//
//  Created by kcfancher on 8/3/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *itemsTableView;

@property (nonatomic, strong) NSMutableArray *items;

@end
