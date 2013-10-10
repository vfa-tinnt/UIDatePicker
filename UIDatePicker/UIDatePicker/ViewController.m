//
//  ViewController.m
//  UIDatePicker
//
//  Created by admin on 10/10/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)getDatePicker:(id)sender {
    
    NSDateFormatter *timeFormatter = [[NSDateFormatter alloc] init];
    [timeFormatter setDateFormat:@"HH:mm"];
    NSString *timeString = [timeFormatter stringFromDate:self.datePicker.date];
    self.lbCurrentTime.text = timeString;
    
    [timeFormatter release];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_datePicker release];
    [_lbCurrentTime release];
    [super dealloc];
}
@end
