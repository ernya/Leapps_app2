//
//  MainMenuController.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 03/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainMenuController : UITableViewController

- (void) settingsPressed;
- (void)viewDidAppear:(BOOL)animated;

@property bool _isAdmin;
@end

