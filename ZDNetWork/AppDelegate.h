//
//  AppDelegate.h
//  ZDNetWork
//
//  Created by Macbook on 2017/9/28.
//  Copyright © 2017年 Macbook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

