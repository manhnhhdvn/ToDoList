//
//  AddItemViewController.m
//  ToDoList
//
//  Created by マイン・グエン・フー on 2016/11/09.
//  Copyright © 2016年 マイン・グエン・フー. All rights reserved.
//

#import "AddItemViewController.h"

@interface AddItemViewController()

@property (weak, nonatomic) IBOutlet UITextField *item;
@property (weak, nonatomic) IBOutlet UIDatePicker *time;

@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _time.date = [NSDate date];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)save:(id)sender {
    [self.item resignFirstResponder];
    
    NSDate *pickedDate = [self.time date];  // Current date
    
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"JST"];
    
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = pickedDate;
    localNotification.alertBody = self.item.text;
    localNotification.alertAction = @"Show the item";
    localNotification.timeZone = timeZone;
    localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
