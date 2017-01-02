//
//  CDZTableviewDataSource.m
//  CDZDifferenceCellDemo
//
//  Created by Nemocdz on 2017/1/2.
//  Copyright © 2017年 Nemocdz. All rights reserved.
//

#import "CDZTableviewDataSource.h"
#import "CDZTypeACell.h"
#import "CDZTypeBCell.h"
#import "CDZTableviewItem.h"

@implementation CDZTableviewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.itemsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView registerClass:[self cellClassAtIndexPath:indexPath] forCellReuseIdentifier:[self cellIdentiferAtIndexPath:indexPath]];
    CDZBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:[self cellIdentiferAtIndexPath:indexPath]];
    cell.item = [self itemAtIndexPath:indexPath];
    return cell;
}

- (Class)cellClassAtIndexPath:(NSIndexPath *)indexPath{
    CDZTableviewItem *item = [self itemAtIndexPath:indexPath];
    switch (item.type) {
        case typeA:
            return [CDZTypeACell class];
            break;
        case typeB:
            return [CDZTypeBCell class];
            break;
    }
}

- (CDZTableviewItem *)itemAtIndexPath:(NSIndexPath *)indexPath{
    return self.itemsArray[indexPath.row];
}

- (NSString *)cellIdentiferAtIndexPath:(NSIndexPath *)indexPath{
    return NSStringFromClass([self cellClassAtIndexPath:indexPath]);
}



@end
