//
//  CCAppDelegate.h
//  Christmas
//
//  Created by Collin Ruffenach on 11/3/12.
//  Copyright (c) 2012 Notion HQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CCRootViewController;

@interface CCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CCRootViewController *rootViewController;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
