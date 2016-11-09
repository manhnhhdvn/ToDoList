//
//  ToDoItem.m
//  ToDoList
//
//  Created by マイン・グエン・フー on 2016/11/09.
//  Copyright © 2016年 マイン・グエン・フー. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface ToDoListItemEntity : RLMObject

@property NSInteger id;
@property(strong) NSString *item;
@property(strong) NSDate *time;
- (instancetype)init:(NSInteger)id andItem:(NSString *)item andTime:(NSDate *)time;

@end
