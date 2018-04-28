//
//  changeImageViewController.h
//  Training0419c
//
//  Created by  Chih-Yu Ko on 2018/4/26.
//  Copyright © 2018年 Oath. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GameplayKit;

@interface changeImageViewController : UIViewController {
    NSInteger currIndex;
    NSArray *imageArray;
    GKRandomDistribution *distribution;
    
    __weak IBOutlet UIImageView *mainImageView;
}

@end
