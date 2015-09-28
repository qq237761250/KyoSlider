//
//  ViewController.m
//  KyoSliderDemo
//
//  Created by Kyo on 25/9/15.
//  Copyright © 2015 hzins. All rights reserved.
//

#import "ViewController.h"
#import "KyoSlider.h"

@interface ViewController ()<KyoSliderDelegate>

@property (weak, nonatomic) IBOutlet KyoSlider *kyoSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *arrayImage = [NSMutableArray array];
    
    NSDictionary *dict = @{@"imgSelected" : [[UIImage imageNamed:@"consultant_line_experience_2_normal"] resizableImageWithCapInsets:UIEdgeInsetsMake(16, 16, 16, 16)],
                           @"imgSlider" : [UIImage imageNamed:@"consultant_btnicon_state_2_normal"]};
    [arrayImage addObject:dict];
    
    NSDictionary *dict1 = @{@"imgSelected" : [[UIImage imageNamed:@"consultant_line_experience_3_normal"] resizableImageWithCapInsets:UIEdgeInsetsMake(16, 16, 16, 16)],
                            @"imgSlider" : [UIImage imageNamed:@"consultant_btnicon_state_3_normal"]};
    [arrayImage addObject:dict1];

    
    NSDictionary *dict2 = @{@"imgSelected" : [[UIImage imageNamed:@"consultant_line_experience_4_normal"] resizableImageWithCapInsets:UIEdgeInsetsMake(16, 16, 16, 16)],
                           @"imgSlider" : [UIImage imageNamed:@"consultant_btnicon_state_4_normal"]};
    [arrayImage addObject:dict2];

    
    self.kyoSlider.arrayImageSection = arrayImage;
}

#pragma mark --------------------
#pragma mark - KyoSliderDelegate

- (void)kyoSliderValueChange:(KyoSlider *)kyoSlider {
    NSLog(@"%f",kyoSlider.currentValue);
}



@end
