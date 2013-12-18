//
//  EditModelListController.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 09/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditModelListController : UITableViewController

@property (strong, nonatomic) NSMutableArray *modelList;
@property (weak, nonatomic) Model *modelselected;

@end
