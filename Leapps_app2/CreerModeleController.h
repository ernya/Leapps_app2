//
//  CreerModeleController.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 09/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImagePickerController(shouldAutoRotate)
-(bool) shouldAutorotate;
@end

@interface CreerModeleController : UIViewController
- (IBAction)savePressed: (UIButton *) sender;
- (IBAction)pickImage:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *_name;
@property (weak, nonatomic) IBOutlet UIImageView *_imageView;
@property (strong, nonatomic) NSMutableArray *_points;
@end
