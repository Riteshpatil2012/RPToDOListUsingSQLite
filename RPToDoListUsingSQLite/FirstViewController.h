//
//  FirstViewController.h
//  RPToDoListUsingSQLite
//
//  Created by Ritesh on 06/11/16.
//  Copyright © 2016 riteshpatil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPDataBaseManager.h"

@interface FirstViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *allTasks;
}
@property (strong, nonatomic) IBOutlet UITableView *myTableView;



@end

