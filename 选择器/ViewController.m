//
//  ViewController.m
//  选择器
//
//  Created by liukang on 15/11/9.
//  Copyright (c) 2015年 liukang. All rights reserved.
//

#import "ViewController.h"
#import "ZHPickView.h"
@interface ViewController ()<ZHPickViewDelegate>
@property (nonatomic,strong)ZHPickView *pickview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
}
- (IBAction)buttonAction:(id)sender {
    
    
    [self addZhpickview];
    
    
}

-(void)addZhpickview
{
    NSArray *array = @[@[@"1",@"大幅度",@" 大师傅",@" 阿道夫爱打"],@[@"2",@" 爱打发",@" 的萨芬爱上",@" 爱打发的"],@[@" 大师傅",@" 的萨芬爱上",@"阿斯顿发生",@" 爱打飞 "]];
    self.pickview = [[ZHPickView alloc]initPickviewWithArray:array isHaveNavControler:NO];
//    [self.pickview setBackgroundColor:[UIColor redColor]];
    self.pickview.delegate = self;
    [self.view addSubview:self.pickview];
}

#pragma mark ZHpickviewDelet
-(void)toobarDonBtnHaveClick:(ZHPickView *)pickView resultString:(NSString *)resultString
{
    self.disLablel.text = resultString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
