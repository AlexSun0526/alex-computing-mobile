//
//  ViewController.m
//  testGit
//
//  Created by Ericsun on 8/27/19.
//  Copyright © 2019 AlexSun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLable;
@property (strong,nonatomic)NSNumber *sliderValue;
@end

@implementation ViewController
@synthesize sliderValue = _sliderValue;

-(NSNumber*)sliderValue{
    if(!_sliderValue)
        _sliderValue = @0.5;
    return _sliderValue;
}
-(void)setSliderValue:(NSNumber *)sliderValue{
    _sliderValue = sliderValue;
    self.greetingLable.text = [NSString stringWithFormat:@"%@", sliderValue];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.greetingLable.text = @"Welcome back Alex This is Jarvis";
    self.greetingLable.text = @"Hello Alex";
}
- (IBAction)sliderDidChange:(UISlider *)sender {
    self.sliderValue = @(sender.value);;;
}


@end
