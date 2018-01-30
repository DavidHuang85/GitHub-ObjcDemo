//
//  DemoTabBarViewController.m
//  ObjcDemo
//
//  Created by davidhuang on 2018/1/30.
//  Copyright © 2018年 davidhuang. All rights reserved.
//

#import "DemoTabBarViewController.h"
#import "DemoFirstViewController.h"
#import "DemoSecondViewController.h"
#import "DemoThirdViewController.h"

@interface DemoTabBarViewController ()

@end

@implementation DemoTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = nil;
    self.tabBar.backgroundColor = [UIColor blackColor];

    DemoFirstViewController *f = [[DemoFirstViewController alloc] init];
    f.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"First" image:nil selectedImage:nil];
    f.view.backgroundColor = [UIColor redColor];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:f];

    DemoSecondViewController *s = [[DemoSecondViewController alloc] init];
    s.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Second" image:nil selectedImage:nil];
    s.view.backgroundColor = [UIColor brownColor];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:s];

    DemoThirdViewController *t = [[DemoThirdViewController alloc] init];
    t.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Third" image:nil selectedImage:nil];
    t.view.backgroundColor = [UIColor blueColor];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:t];
    self.viewControllers = @[nav1,nav2,nav3];


    [self.tabBar setBackgroundImage:[self imageWithColor:[UIColor whiteColor]]];
}


- (UIImage *)imageWithColor:(UIColor *)color {
    // 描述矩形
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);

    // 开启位图上下文
    UIGraphicsBeginImageContext(rect.size);
    // 获取位图上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 使用color演示填充上下文
    CGContextSetFillColorWithColor(context, [color CGColor]);
    // 渲染上下文
    CGContextFillRect(context, rect);
    // 从上下文中获取图片
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    // 结束上下文
    UIGraphicsEndImageContext();

    return theImage;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end