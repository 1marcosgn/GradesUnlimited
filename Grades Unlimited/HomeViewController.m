//
//  HomeViewController.m
//  Grades Unlimited
//
//  Created by Pepe Ramirez on 06/03/14.
//  Copyright (c) 2014 Pepe Ramirez. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CellCustomHome";
    
    CellCustomHome * cell = (CellCustomHome*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CellCustomHome" owner:nil options:nil];
        cell = (CellCustomHome*)[nib objectAtIndex:0];
    }
    
    switch (indexPath.row) {
        case 0:
            [cell.btnCellCustomHome setTitle:@"About Us" forState:UIControlStateNormal];
            //[cell.btnCellCustomHome setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
            break;
        case 1:
            [cell.btnCellCustomHome setTitle:@"How it Works" forState:UIControlStateNormal];
            //[cell.btnCellCustomHome setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
            break;
        case 2:
            [cell.btnCellCustomHome setTitle:@"Our Classes" forState:UIControlStateNormal];
            //[cell.btnCellCustomHome setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
            break;
        case 3:
            [cell.btnCellCustomHome setTitle:@"Testimonials" forState:UIControlStateNormal];
            //[cell.btnCellCustomHome setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
            break;
        case 4:
            [cell.btnCellCustomHome setTitle:@"Contact Us" forState:UIControlStateNormal];
            //[cell.btnCellCustomHome setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
            break;
        default:
            break;
    }
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
