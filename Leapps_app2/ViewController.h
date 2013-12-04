//
//  ViewController.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 01/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainMenuController.h"

@interface UIImage (scaleToSize)
- (UIImage*)scaleToSize:(CGSize)size;
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
@end

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *ApplicationView;
@property (weak, nonatomic) MainMenuController *_tableView;
@end
