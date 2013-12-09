//
//  PartieRapideController.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 09/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "PartieRapideController.h"

@interface PartieRapideController ()

@end

@implementation PartieRapideController

@synthesize _slider;
@synthesize _nbPoints;
@synthesize _nbGames;
@synthesize _infinite;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *background = [UIImage imageNamed: @"blue_wallpaper.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:background];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)followValueChanged:(UISlider *)sender
{
    _nbPoints.text = [NSString stringWithFormat:@"%i", (int) sender.value];
}

- (IBAction)followValueChanged2:(UITextField *)sender
{
    _slider.value = _nbPoints.text.intValue;
}

- (IBAction)isInfinite:(UISwitch *)sender
{
    if (_infinite.on)
    {
        _nbGames.userInteractionEnabled = NO;
        _nbGames.alpha = 0.2;
    }
    else
    {
        _nbGames.userInteractionEnabled = YES;
        _nbGames.alpha = 1;
    }
}


@end
