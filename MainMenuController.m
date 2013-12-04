//
//  MainMenuController.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 03/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "MainMenuController.h"

@interface MainMenuController ()

@end

@implementation MainMenuController

@synthesize _isAdmin;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidAppear:(BOOL)animated
{
    _isAdmin = true;
    [super viewDidAppear:animated];
    [self settingsPressed];
}

- (void)settingsPressed
{
    _isAdmin = !_isAdmin;
    for (int i = 1 ; i < 5 ; ++i)
    {
        NSIndexPath *path = [NSIndexPath indexPathForRow:i inSection:0];
        UITableViewCell *cell = (UITableViewCell *)[(UITableView *)[self view] cellForRowAtIndexPath: path];
        if (!_isAdmin)
        {
            [cell setUserInteractionEnabled:NO];
            [cell setAlpha:0.2];
        }
        else
        {
            [cell setUserInteractionEnabled:YES];
            [cell setAlpha:1];
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _isAdmin = false;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];

    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
 
 */

@end
