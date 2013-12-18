//
//  EditionModeleController.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 09/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "EditPointsViewController.h"
#import "EditionModeleController.h"

#import "ViewController.h"

@interface EditionModeleController ()

@end

@implementation EditionModeleController
@synthesize _name, _imageView, _points, _model;
- (NSUInteger) supportedInterfaceOrientations
{
    //Because your app is only landscape, your view controller for the view in your
    // popover needs to support only landscape
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}

- (void) setModel:(Model *)model
{
    _model = model;
}

- (IBAction)savePressed:(UIButton *)sender
{
    if (_imageView.image == NULL)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Erreur" message:@"Veuillez spécifier une image de fond pour créer le modèle" delegate:self cancelButtonTitle:@"C'est d'accord" otherButtonTitles:nil];
        [alert show];
    }
    else if (_points.count == 0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Erreur" message:@"Veuillez spécifier au moins un point a relier" delegate:self cancelButtonTitle:@"C'est d'accord" otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        _model.backgroundImage = _imageView.image;
        _model.points = _points;
        [self.navigationController popViewControllerAnimated:YES];
    }
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
    _points = _model.points;
    if (_points == NULL)
        _points = [[NSMutableArray alloc] init];
    _name.text = [_model.data objectForKey:@"Name"];
    _imageView.image = _model.backgroundImage;
	// Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
