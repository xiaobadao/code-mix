//
//  ViewController.h
//  demo
//
//  Created by apple on 2017/2/20.
//  Copyright © 2017年 Chuckie. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface ViewController : UIViewController

@property (nonatomic ,copy) NSString *name;
@property (nonatomic ,copy) NSString *titleName;

- (void)initWithName:(NSString * _Nonnull)name andTitle:(NSString * _Nonnull)title;

NS_ASSUME_NONNULL_END

@end

