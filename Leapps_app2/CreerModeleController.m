//
//  CreerModeleController.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 09/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "ViewController.h"
#import "EditPointsViewController.h"
#import "Model.h"
#import "CreerModeleController.h"

@interface CreerModeleController ()

@end

@implementation UIImagePickerController (shouldAutoRotate)

- (bool) shouldAutorotate
{
        return NO;
}

@end

@implementation CreerModeleController
@synthesize _name, _imageView, _points;

- (NSUInteger) supportedInterfaceOrientations
{
    //Because your app is only landscape, your view controller for the view in your
    // popover needs to support only landscape
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}

- (IBAction)savePressed:(UIButton *)sender
{
    NSMutableArray *temp = [[NSMutableArray alloc] init];
    Model *model = [[Model alloc] initWithName: [_name text] Image: _imageView.image Points: temp];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"PointsEditing"])
    {
        EditPointsViewController *temp = segue.destinationViewController;
        [temp set_imageSource:_imageView.image];
        [temp set_finalpoints:_points];
    }
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
	UIImage *myimage = [info objectForKey:UIImagePickerControllerOriginalImage];
    // Resize the image from the camera
    // Show the photo on the screen
    
    UIImage *scaledImage = [myimage scaleToSize:CGSizeMake(1920, 1080)];
    
    _imageView.image = scaledImage;
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)pickImage:(UIButton *)sender
{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.editing = YES;
    imagePickerController.delegate = (id)self;
    
    [self  presentViewController:imagePickerController animated:NO completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    _points = [[NSMutableArray alloc] init];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _points = [[NSMutableArray alloc] init];
    UIImage *background = [UIImage imageNamed: @"blue_wallpaper.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:background];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
