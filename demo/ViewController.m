//
//  ViewController.m
//  demo
//
//  Created by apple on 2017/2/20.
//  Copyright © 2017年 Chuckie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString * path = [[NSBundle mainBundle] pathForResource:@"excel函数介绍" ofType:@"rtf"];
    NSLog(@"%@",path);
    NSString* content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"NSString类方法读取的内容是：\n%@",content);
    NSString * thepath = [[self homePath] stringByAppendingPathComponent:@"fd_list.txt"];
    
    if ([content writeToFile:thepath atomically:YES]) {
        NSLog(@"%@",@"存储成功");
    }else
    {
        NSLog(@"%@",@"存储失败");
    }
    if ([[NSFileManager defaultManager] fileExistsAtPath:thepath]) {
        NSLog(@"存在文件");
        NSLog(@"读取到了%@",[NSString stringWithContentsOfFile:thepath encoding:NSUTF8StringEncoding error:nil]);
    }else
    {
        NSLog(@"%@",@"读取失败");
    }
    NSLog(@"home direct :%@",[self homePath]);
}

- (NSString *)homePath
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
