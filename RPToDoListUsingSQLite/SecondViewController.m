//
//  SecondViewController.m
//  RPToDoListUsingSQLite
//
//  Created by Ritesh on 06/11/16.
//  Copyright © 2016 riteshpatil. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)saveTask {
    
    NSString *task = self.textField.text;
    
    if (task.length > 0) {
        
        NSString *insertQuery = [NSString stringWithFormat:@"INSERT INTO TASK_TABLE(TASK_ID,TASK) VALUES('%@','%@')",task.uppercaseString,task];
        
        NSLog(@"%@",insertQuery);
        
        int result = [[RPDataBaseManager sharedManager]executeQuery:insertQuery];
        
        if (result == 1) {
            NSLog(@"Successfully inserted Task");
        }
        else {
            NSLog(@"Unable to insert task in SQLite Database");
        }
        
        NSLog(@"Task Saved : %@",task);
        
        self.textField.text = @"";
    }
    else {
        NSLog(@"Enter Task First to Save.");
    }
    
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    [self saveTask];
    return YES;
}


- (IBAction)saveButton:(id)sender {
    [self saveTask];
}
@end
