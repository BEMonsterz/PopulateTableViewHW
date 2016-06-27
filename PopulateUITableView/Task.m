//
//  Task.m
//  PopulateUITableView
//
//  Created by Bryan Ayllon on 6/26/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "Task.h"

@implementation Task
- (instancetype) initWithTitle: (NSString *) title {
    self = [super init];
    self.name = title;
    return self;
}

@end
