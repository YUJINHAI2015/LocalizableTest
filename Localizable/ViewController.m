//
//  ViewController.m
//  Localizable
//
//  Created by yiLian on 17/2/28.
//  Copyright © 2017年 shuyi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
        1、系统默认通过InfoPlist.strings去调用info.plist里面的配置
        2、系统默认通过Localizable.strings去配置字符串本地化
        3、当storyboard里面已经有控件时，系统会自动创建对应的key-value
     */
    
    
    UILabel *bottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 200, 100, 50)];
    [self.view addSubview:bottomLabel];
    // 系统默认会调用这个文件
//    bottomLabel.text = NSLocalizedString(@"bottom_Label", @"这只是一个测试");
    // 到指定的文件调用，这个方法适合团队合作
    bottomLabel.text = NSLocalizedStringFromTable(@"bottom_Label", @"other", @"这只是一个测试");
    
    // 测试了一下，storyboard里面的label。发现代码的优先级高于storyboard。
    self.myLabel.text = NSLocalizedString(@"my_Label", @"这只是一个测试");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
