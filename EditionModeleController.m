//
//  EditionModeleController.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 09/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "EditPointsViewController.h"
#import "EditionModeleController.h"

@interface EditionModeleController ()

@end

@implementation EditionModeleController

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


- (IBAction)pickImage:(UIButton *)sender
{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.editing = YES;
    imagePickerController.delegate = (id)self;
    
    [self  presentViewController:imagePickerController animated:NO completion:nil];
}

@end
