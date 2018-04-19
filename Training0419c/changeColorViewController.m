//
//  changeColorViewController.m
//  Training0419c
//
//  Created by  Chih-Yu Ko on 2018/4/19.
//  Copyright © 2018年 Oath. All rights reserved.
//

#import "changeColorViewController.h"

@interface changeColorViewController ()

@end

@implementation changeColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)slideChanged:(id)sender {
    float red = sliderRed.value/255;
    float green = sliderGreen.value/255;
    float blue = sliderBlue.value/255;
    float alpha = sliderAlpha.value;
    
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    UIColor *slideColor = [UIColor colorWithRed:40/255 green:40/255 blue:40/255 alpha:alpha];
    targetImageView.backgroundColor=color;
    sliderAlpha.thumbTintColor=slideColor;
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
