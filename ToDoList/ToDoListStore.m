//
//  ToDoListStore.m
//  ToDoList
//
//  Created by マイン・グエン・フー on 2016/11/09.
//  Copyright © 2016年 マイン・グエン・フー. All rights reserved.
//

#import "ToDoListStore.h"

@implementation ToDoListStore

- (void)save:(ToDoListItemEntity *)entity{
    [ToDoListItemEntity createOrUpdateInRealm:_realm withValue:entity];
    NSLog(@"RLM path %@", [RLMRealm defaultRealm].configuration.fileURL);
}

@end
