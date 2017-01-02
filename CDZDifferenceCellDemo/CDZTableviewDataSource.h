//
//  CDZTableviewDataSource.h
//  CDZDifferenceCellDemo
//
//  Created by Nemocdz on 2017/1/2.
//  Copyright © 2017年 Nemocdz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class CDZTableviewItem;
@interface CDZTableviewDataSource : NSObject<UITableViewDataSource>

@property (nonatomic,strong) NSArray *itemsArray;

- (CDZTableviewItem *)itemAtIndexPath:(NSIndexPath *)indexPath;
- (Class)cellClassAtIndexPath:(NSIndexPath *)indexPath;

@end
