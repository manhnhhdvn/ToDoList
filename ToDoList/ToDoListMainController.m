//
//  ViewController.m
//  ToDoList
//
//  Created by マイン・グエン・フー on 2016/11/08.
//  Copyright © 2016年 マイン・グエン・フー. All rights reserved.
//

#import "ToDoListMainController.h"

static NSString *const kToDoItemCell = @"ToDoItemCell";

@interface ToDoListMainController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ToDoListMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([ToDoItemCell class]) bundle:nil] forCellReuseIdentifier:kToDoItemCell];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reloadTable)
                                                 name:@"reloadData"
                                               object:nil];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    NSLog(@"%@ %s", NSStringFromClass([self class]), __FUNCTION__);
}

-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"%@ %s", NSStringFromClass([self class]), __FUNCTION__);
}

-(void)viewWillDisappear:(BOOL)animated {
    NSLog(@"%@ %s", NSStringFromClass([self class]), __FUNCTION__);
}

-(void)viewDidDisappear:(BOOL)animated {
    NSLog(@"%@ %s", NSStringFromClass([self class]), __FUNCTION__);
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return 10;
    return [[[UIApplication sharedApplication] scheduledLocalNotifications] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ToDoItemCell *cell = [tableView dequeueReusableCellWithIdentifier:kToDoItemCell forIndexPath:indexPath];
    
    NSArray *localNotifications = [[UIApplication sharedApplication] scheduledLocalNotifications];
    UILocalNotification *localNotification = [localNotifications objectAtIndex:indexPath.row];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"JST"];
    [dateFormatter setTimeZone:timeZone];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    [cell.item setText:localNotification.alertBody];
    [cell.time setText:[dateFormatter stringFromDate:localNotification.fireDate]];
    
    return cell;
}

- (void)reloadTable
{
    [self.tableView reloadData];
}

@end
