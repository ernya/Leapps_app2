//
//  EditPointsViewController.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 17/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "CreerModeleController.h"
#import "EditPointsViewController.h"

@interface EditPointsViewController ()

@end

@implementation EditPointsViewController

@synthesize  _image, _imageSource, _points, _finalpoints;

-(void) viewWillDisappear:(BOOL)animated {
    for(NSValue *aKey in _points)
    {
        [_finalpoints addObject:[_points objectForKey:aKey]];
    }
}

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
    _image.image = _imageSource;
_points = [[NSMutableDictionary alloc] init];
	// Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touch_point = [touch locationInView:_image];
    CGPoint touch_point_absolute = [touch locationInView:self.view];
    for(NSValue *aKey in _points)
    {
        UIImageView *image = aKey.nonretainedObjectValue;
        if (image.frame.origin.x <= touch_point_absolute.x && image.frame.origin.y <= touch_point_absolute.y && image.frame.origin.x + image.frame.size.width >= touch_point_absolute.x && image.frame.origin.y + image.frame.size.height >= touch_point_absolute.y)
        {
            [_points removeObjectForKey:aKey];
            [image removeFromSuperview];
            return ;
        }
    }
    
    UIView *touchView = [[UIView alloc] init];
    [touchView setBackgroundColor:[UIColor redColor]];
    touchView.frame = CGRectMake(touch_point.x + _image.frame.origin.x - 15, touch_point.y + _image.frame.origin.y - 15, 30, 30);
    touchView.layer.cornerRadius = 15;
    [self.view addSubview:touchView];
    [_points setObject:[NSValue valueWithCGPoint:touch_point] forKey:[NSValue valueWithNonretainedObject:touchView]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
