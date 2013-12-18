//
//  EditModelListController.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 09/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "ThreeModelCell.h"
#import "EditModelListController.h"
#import "EditionModeleController.h"

@interface EditModelListController ()

@end

@implementation EditModelListController

@synthesize modelList, modelselected;

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
    Model *model = [[Model alloc] initWithName:@"Maison" Image:NULL Points:NULL];
    Model *model2 = [[Model alloc] initWithName:@"Voiture" Image:NULL Points:NULL];
    Model *model3 = [[Model alloc] initWithName:@"Chat" Image:NULL Points:NULL];
    [modelList addObject:model];
    [modelList addObject:model2];
    [modelList addObject:model3];
    [modelList addObject:model];
    [modelList addObject:model2];
    [modelList addObject:model3];
    [modelList addObject:model];
    [modelList addObject:model2];
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

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

- (void) callback:(Model *) model
{
    modelselected = model;
    [self performSegueWithIdentifier:@"editModel" sender:self];
}

- (void) prepareForSegue:(UIStoryboardSegue*)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"editModel"])
    {
        EditionModeleController *controller = [segue destinationViewController];
        [controller setModel:modelselected];	
    }
}

- (void) viewDidAppear:(BOOL)animated
{
    [self.view setNeedsDisplay];
}
// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    ThreeModelCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[ThreeModelCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier width:[tableView rectForRowAtIndexPath:indexPath].size.width height:[tableView rectForRowAtIndexPath:indexPath].size.height callback:@selector(callback:) handler:self];
    }
    
    // Set the data for this cell:
    
    [cell setFirstModel:[modelList objectAtIndex:indexPath.row * 3]];
    if (modelList.count > indexPath.row * 3 + 1)
    [cell setSecondModel:[modelList objectAtIndex:indexPath.row * 3 + 1]];
    if (modelList.count > indexPath.row * 3 + 2)
    [cell setThirdModel:[modelList objectAtIndex:indexPath.row * 3 + 2]];
    
    return cell;
}

@end
