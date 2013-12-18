//
//  EditionModeleController.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 09/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditionModeleController : UIViewController
- (IBAction)savePressed: (UIButton *) sender;
- (IBAction)pickImage:(UIButton *)sender;
- (void)setModel:(Model *)model;
@property (weak, nonatomic) Model *_model;
@property (weak, nonatomic) IBOutlet UILabel *_name;
@property (weak, nonatomic) IBOutlet UIImageView *_imageView;
@property (strong, nonatomic) NSMutableArray *_points;
@end
