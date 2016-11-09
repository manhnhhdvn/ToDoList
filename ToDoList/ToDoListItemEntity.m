//
//  ToDoItem.m
//  ToDoList
//
//  Created by マイン・グエン・フー on 2016/11/09.
//  Copyright © 2016年 マイン・グエン・フー. All rights reserved.
//

#import "ToDoListItemEntity.h"

@implementation ToDoListItemEntity

- (instancetype)init:(NSInteger)id andItem:(NSString *)item andTime:(NSDate *)time{
    self = super.init;
    if (self){
        self.id = id;
        self.item = item;
        self.time = time;
    }
    return self;
}

@end
