//
//  EditPointsViewController.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 17/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"
#import "CreerModeleController.h"

@interface EditPointsViewController : UIViewController
@property (weak, nonatomic) UIImage *_imageSource;
@property (weak, nonatomic) IBOutlet UIImageView *_image;
@property (strong, nonatomic) NSMutableDictionary *_points;
@property (strong, nonatomic) NSMutableArray *_finalpoints;
-(void) viewWillDisappear:(BOOL)animated;
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
@end
