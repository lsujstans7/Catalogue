//
//  ItemCell.h
//  Catalogue
//
//  Created by iOS Camp on 8/3/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *mainLabel;
@property (nonatomic, weak) IBOutlet UILabel *smallLabel;
@property (nonatomic, weak) IBOutlet UILabel *rightLabel;
@property (nonatomic, weak) IBOutlet UIImageView *itemImage;
 
@end
