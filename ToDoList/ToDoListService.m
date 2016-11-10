//
//  ToDoListService.m
//  ToDoList
//
//  Created by マイン・グエン・フー on 2016/11/09.
//  Copyright © 2016年 マイン・グエン・フー. All rights reserved.
//

#import "ToDoListService.h"

@implementation ToDoListService

-(void)save:(ToDoListItemEntity *)entity{
    [[ToDoListStore new] save:entity];
}

@end
