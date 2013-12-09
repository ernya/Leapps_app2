//
//  PartieRapideController.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 09/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PartieRapideController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *_slider;
@property (weak, nonatomic) IBOutlet UITextField *_nbPoints;
@property (weak, nonatomic) IBOutlet UITextField *_nbGames;
@property (weak, nonatomic) IBOutlet UISwitch *_infinite;

- (IBAction)followValueChanged:(UISlider *)sender;
- (IBAction)followValueChanged2:(UITextField *)sender;
- (IBAction)isInfinite:(UISwitch *)sender;

@end
