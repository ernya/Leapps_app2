//
//  ViewController.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 01/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation UIImage (scaleToSize)

- (UIImage*)scaleToSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0.0, size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGContextDrawImage(context, CGRectMake(0.0f, 0.0f, size.width, size.height), self.CGImage);
    
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return scaledImage;
}

@end

@implementation ViewController;

@synthesize ApplicationView;
@synthesize _tableView;

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString *segueId = segue.identifier;
    
    if ([segueId isEqualToString:@"EmbedTable"])
    {
        _tableView = (MainMenuController *)[segue destinationViewController];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton* fakeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    fakeButton.frame = CGRectMake(0.0, 0.0, 32.0, 32.0);
    [fakeButton setImage:[UIImage imageNamed:@"Settings.png"] forState:UIControlStateNormal];
    UIBarButtonItem *fakeButtonItem = [[UIBarButtonItem alloc] initWithCustomView:fakeButton];
    self.navigationItem.rightBarButtonItem = fakeButtonItem;
    [fakeButton addTarget:self action:@selector(multipleTap:withEvent:) forControlEvents:UIControlEventTouchDown];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)multipleTap:(id)sender withEvent:(UIEvent *)event  {
    UITouch* touch = [[event allTouches] anyObject];
    if (touch.tapCount == 2)
            [_tableView settingsPressed];
}

@end


