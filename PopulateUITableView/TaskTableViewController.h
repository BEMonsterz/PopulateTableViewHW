//
//  TaskTableViewController.h
//  PopulateUITableView
//
//  Created by Bryan Ayllon on 6/23/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface TaskTableViewController : UITableViewController{
    NSMutableArray *_Task;    
}
@property (nonatomic,copy) NSMutableArray *Tasks;

@end
