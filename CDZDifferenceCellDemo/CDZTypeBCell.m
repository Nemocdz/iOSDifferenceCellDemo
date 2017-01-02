//
//  CDZTypeBCell.m
//  CDZDifferenceCellDemo
//
//  Created by Nemocdz on 2017/1/2.
//  Copyright © 2017年 Nemocdz. All rights reserved.
//

#import "CDZTypeBCell.h"

@implementation CDZTypeBCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

+ (CGFloat)tableView:(UITableView *)tableView rowHeightForObject:(CDZTableviewItem *)object{
    return 60.f;
}

@end
