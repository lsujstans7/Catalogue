//
//  ItemCell.m
//  Catalogue
//
//  Created by iOS Camp on 8/3/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import "ItemCell.h"

@implementation ItemCell
@synthesize mainLabel = _mainLabel;
@synthesize smallLabel = _smallLabel;
@synthesize rightLabel = _rightLabel;
@synthesize itemImage = _itemImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
