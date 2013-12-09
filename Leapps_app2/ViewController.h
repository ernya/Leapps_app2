//
//  ViewController.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 01/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (scaleToSize)
- (UIImage*)scaleToSize:(CGSize)size;
@end

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *ApplicationView;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@end
