//
//  AppDelegate.h
//  ToDoList
//
//  Created by マイン・グエン・フー on 2016/11/08.
//  Copyright © 2016年 マイン・グエン・フー. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoListMainController.h"
@import UserNotifications;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UNUserNotificationCenterDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ToDoListMainController *viewController;

@end

