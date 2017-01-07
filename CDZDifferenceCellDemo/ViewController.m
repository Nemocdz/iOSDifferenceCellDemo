//
//  ViewController.m
//  CDZDifferenceCellDemo
//
//  Created by Nemocdz on 2017/1/2.
//  Copyright © 2017年 Nemocdz. All rights reserved.
//

#import "ViewController.h"
#import "CDZBaseCell.h"
#import "CDZTableviewDataSource.h"
#import "CDZTableviewItem.h"

@interface ViewController ()<UITableViewDelegate>
@property (nonatomic,strong) UITableView *tableview;
@property (nonatomic,strong) CDZTableviewDataSource *datasource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableview];
}

- (NSArray *)items{
    CDZTableviewItem *itemA = [CDZTableviewItem new];
    itemA.type = typeA;
    CDZTableviewItem *itemB = [CDZTableviewItem new];
    itemB.type = typeB;
    NSMutableArray *mArray = [NSMutableArray new];
    for (int i = 0; i < 20; i++) {
        [mArray addObject:itemA];
        [mArray addObject:itemB];
        [mArray addObject:itemB];
    }
    return [NSArray arrayWithArray:mArray];
}

- (UITableView *)tableview{
    if (!_tableview) {
        _tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableview.delegate = self;
        _tableview.dataSource = self.datasource;
      
    }
    return _tableview;
}

- (CDZTableviewDataSource *)datasource{
    if (!_datasource) {
        _datasource = [CDZTableviewDataSource new];
        _datasource.itemsArray = [self items];
    }
    return _datasource;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    Class cls = [self.datasource cellClassAtIndexPath:indexPath];
    return [cls tableView:tableView rowHeightForObject:self.datasource.itemsArray[indexPath.row]];
}


@end
