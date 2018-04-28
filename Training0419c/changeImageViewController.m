//
//  changeImageViewController.m
//  Training0419c
//
//  Created by  Chih-Yu Ko on 2018/4/26.
//  Copyright © 2018年 Oath. All rights reserved.
//

#import "changeImageViewController.h"
@import GameplayKit;

@interface changeImageViewController ()

@end

@implementation changeImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    currIndex=0;
    imageArray = [[NSArray alloc] initWithObjects: @"carbi.png", @"lapras.png", @"fast.png", @"dengi.png", @"dragon3.png", nil];
    distribution=[GKRandomDistribution distributionWithLowestValue:0 highestValue:imageArray.count-1];
    
    [self changeImageButtonPushed:nil];
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

- (IBAction)changeImageButtonPushed:(id)sender {
    NSInteger index=currIndex;
    while (index==currIndex) {
        index=[distribution nextInt];
    }
    currIndex=index;
    //NSLog(@"index=%ld", index);
    NSString *imageName=imageArray[index];
    //NSLog(@"name=%@", imageName);
    mainImageView.image=[UIImage imageNamed:imageName];
    //NSLog((@"Click button"));
}

@end
