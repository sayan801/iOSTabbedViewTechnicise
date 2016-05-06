//
//  AppDelegate.h
//  iOSTabbedViewTechnicise
//
//  Created by Souman Paul on 02/05/16.
//  Copyright © 2016 technicise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "ViewController1.h"

@class ViewController1;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


// The navigation controller.
@property(strong, nonatomic) UINavigationController *navigationController;
@property(strong,nonatomic) ViewController1 *ViewController1;


@end

