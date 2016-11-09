//
//  ToDoListService.m
//  ToDoList
//
//  Created by マイン・グエン・フー on 2016/11/09.
//  Copyright © 2016年 マイン・グエン・フー. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoListItemEntity.h"
#import "ToDoListStore.h"

@interface ToDoListService : NSObject

-(void)save:(ToDoListItemEntity *)entity;

@end
