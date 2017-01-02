//
//  CDZBaseCell.m
//  CDZDifferenceCellDemo
//
//  Created by Nemocdz on 2017/1/2.
//  Copyright © 2017年 Nemocdz. All rights reserved.
//

#import "CDZBaseCell.h"
#import "CDZTableviewItem.h"

@implementation CDZBaseCell

+ (CGFloat)tableView:(UITableView *)tableView rowHeightForObject:(CDZTableviewItem *)object{
    return 44.f;
}

- (void)setItem:(CDZTableviewItem *)item{
    self.textLabel.text = self.reuseIdentifier;
}

@end
