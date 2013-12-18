//
//  EditModelListController.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 09/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "EditModelListController.h"

@interface EditModelListController ()

@end

@implementation EditModelListController

@synthesize modelList;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    modelList = [[NSMutableArray alloc] init];
    [modelList addObject:@"toto"];
    [modelList addObject:@"toto"];
    [modelList addObject:@"toto"];
    [modelList addObject:@"toto"];
    [modelList addObject:@"toto"];
    [modelList addObject:@"toto"];
    [modelList addObject:@"toto"];
    UIImage *background = [UIImage imageNamed: @"blue_wallpaper.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:background];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    // If you're serving data from an array, return the length of the array:
    return [modelList count] / 3 + ([modelList count] % 3 > 0 ? 1 : 0);
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Set the data for this cell:
    
    cell.textLabel.text = @"Toto";
    cell.detailTextLabel.text = @"More text";
    
    // set the accessory view:
    cell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

@end
