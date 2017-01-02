//
//  CDZBaseCell.h
//  CDZDifferenceCellDemo
//
//  Created by Nemocdz on 2017/1/2.
//  Copyright © 2017年 Nemocdz. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CDZTableviewItem;
@interface CDZBaseCell : UITableViewCell

@property (nonatomic,strong) CDZTableviewItem *item;

+ (CGFloat)tableView:(UITableView*)tableView rowHeightForObject:(CDZTableviewItem *)object;

@end
