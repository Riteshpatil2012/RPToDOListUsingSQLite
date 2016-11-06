//
//  SecondViewController.h
//  RPToDoListUsingSQLite
//
//  Created by Ritesh on 06/11/16.
//  Copyright © 2016 riteshpatil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPDataBaseManager.h"

@interface SecondViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *saveButton;
- (IBAction)saveButton:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

