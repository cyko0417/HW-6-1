//
//  changeColorViewController.h
//  Training0419c
//
//  Created by  Chih-Yu Ko on 2018/4/19.
//  Copyright © 2018年 Oath. All rights reserved.
//

#import "ViewController.h"

@interface changeColorViewController : ViewController {
    
    __weak IBOutlet UISlider *sliderRed;
    
    __weak IBOutlet UISlider *sliderGreen;
    
    __weak IBOutlet UISlider *sliderBlue;
    
    __weak IBOutlet UISlider *sliderAlpha;
    
    __weak IBOutlet UIImageView *targetImageView;
    
    
}

@end
