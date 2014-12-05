//
//  ChallengeTableViewController.m
//  TableViewChallenge
//
//  Created by Marcel on 06.12.14.
//  Copyright (c) 2014 Marcel. All rights reserved.
//

#import "ChallengeTableViewController.h"

@interface ChallengeTableViewController ()

@end

@implementation ChallengeTableViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0)
    {
        return 2;
    }
    else if (section == 1)
    {
        return 1;
    }
    else
    {
        return 3;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        
        cell.textLabel.text = @"I am a section";
        cell.backgroundColor = [UIColor redColor];
    }
    else if (indexPath.section == 1){
        
        cell.textLabel.text = @"another section";
        cell.backgroundColor = [UIColor blueColor];
    }
    else{
        
        cell.textLabel.text = [NSString stringWithFormat:@"Cell %d", indexPath.row];
        cell.backgroundColor = [UIColor yellowColor];
    }
    
    return cell;
}


@end


























