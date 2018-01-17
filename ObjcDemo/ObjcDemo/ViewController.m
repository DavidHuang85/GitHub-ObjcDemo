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


//    self.arrData = [NSMutableArray array];
//    [self.arrData addObject:@1];
//    [self.arrData addObject:@2];
//
//    self.arrDataLock = [[NSLock alloc] init];
//
//
//
//    if (@available(iOS 10.0, *)) {
//        self.readTimer = [NSTimer scheduledTimerWithTimeInterval:1.f repeats:YES block:^(NSTimer * _Nonnull timer) {
////            [self.arrDataLock lock];
//            NSLog(@"hjl-reader self.arrData.count(%zd), self.arrData.lastObject(%@)",self.arrData.count,self.arrData.lastObject);
////            [self.arrDataLock unlock];
//        }];
//    } else {
//        // Fallback on earlier versions
//    }
//
//
//    if (@available(iOS 10.0, *)) {
//        self.writeTimer = [NSTimer scheduledTimerWithTimeInterval:2.f repeats:YES block:^(NSTimer * _Nonnull timer) {
//
//            [self.arrDataLock lock];
//            [self.arrData addObject:@(count)];
//            count++;
//            NSLog(@"hjl-write1 self.arrData.count(%zd)",self.arrData.count);
//            [self.arrDataLock unlock];
//
//        }];
//    } else {
//        // Fallback on earlier versions
//    }
//
//
//
//    if (@available(iOS 10.0, *)) {
//        self.writeTimer2 = [NSTimer scheduledTimerWithTimeInterval:3.f repeats:YES block:^(NSTimer * _Nonnull timer) {
//
//            [self.arrDataLock lock];
//            [self.arrData addObject:@(count)];
//            count++;
//            NSLog(@"hjl-write2 self.arrData.count(%zd)",self.arrData.count);
//            [self.arrDataLock unlock];
//
//        }];
//    } else {
//        // Fallback on earlier versions
//    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
