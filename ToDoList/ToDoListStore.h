//
//  ToDoListStore.m
//  ToDoList
//
//  Created by マイン・グエン・フー on 2016/11/09.
//  Copyright © 2016年 マイン・グエン・フー. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReamlStoreBase.h"
#import "ToDoListItemEntity.h"

@interface ToDoListStore : ReamlStoreBase

- (void)save:(ToDoListItemEntity *)entity;

@end
