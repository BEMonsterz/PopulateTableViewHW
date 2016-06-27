//
//  TaskTableViewController.m
//  PopulateUITableView
//
//  Created by Bryan Ayllon on 6/23/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "TaskTableViewController.h"

@interface TaskTableViewController ()

@end

@implementation TaskTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _Tasks = [NSMutableArray array];
    Task *firstTask = [[Task alloc]initWithTitle:@"Wake Up"];
    Task *secondTask = [[Task alloc]initWithTitle:@"Eat"];
    Task *thirdTask = [[Task alloc]initWithTitle:@"Take shower"];
    Task *fourthTask = [[Task alloc]initWithTitle:@"Do some Code"];
    Task *fifthTask = [[Task alloc]initWithTitle:@"Cry myself to sleep"];
    _Tasks = [[NSMutableArray alloc]initWithArray:@[firstTask.name, secondTask.name, thirdTask.name, fourthTask.name, fifthTask.name]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _Tasks.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskTableViewCell" forIndexPath:indexPath];
    NSString *name =  _Tasks[indexPath.row];
    cell.textLabel.text = name;
    
    
    return cell;
}
@end
