//
//  CDZTableviewItem.h
//  CDZDifferenceCellDemo
//
//  Created by Nemocdz on 2017/1/2.
//  Copyright © 2017年 Nemocdz. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    typeA,
    typeB,
} CDZItemType;

@interface CDZTableviewItem : NSObject

@property (nonatomic,assign) CDZItemType type;

@end
