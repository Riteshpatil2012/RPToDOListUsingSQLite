//
//  RPDataBaseManager.h
//  RPToDoListUsingSQLite
//
//  Created by Ritesh on 06/11/16.
//  Copyright © 2016 riteshpatil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface RPDataBaseManager : NSObject

{
        sqlite3 *myDB;
}
+(instancetype) sharedManager;
-(NSString *)getDatabasePath;
    
-(int)executeQuery:(NSString *)query;
    
-(NSMutableArray *)getAllTask;
    



@end
