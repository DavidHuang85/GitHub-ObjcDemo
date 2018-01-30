//
//  ViewController.m
//  ObjcDemo
//
//  Created by davidhuang on 2017/11/16.
//  Copyright © 2017年 davidhuang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,readwrite,strong)NSMutableArray *arrData;
@property(nonatomic,readwrite,strong)NSLock         *arrDataLock;
@property(nonatomic,readwrite,strong)NSTimer        *readTimer;
@property(nonatomic,readwrite,strong)NSTimer        *writeTimer;
@property(nonatomic,readwrite,strong)NSTimer        *writeTimer2;

@end

@implementation ViewController

long count = 3;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSArray *arr = @[@1,@10,@11,@15,@2,@0];

//    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//
//    }];
    NSArray *arr1 = [arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {

        NSLog(@"\n obj1(%@) obj2(%@)",obj1,obj2);
        return [obj1 intValue] < [obj2 intValue] ? NSOrderedAscending : NSOrderedDescending;

    }];

    NSLog(@"\n重新排序前的数据是(%@)\n重新排序后的数据是(%@)",arr,arr1);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
