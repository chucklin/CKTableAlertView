//
//  CKViewController.m
//  CKTableAlertDemo
//
//  Created by Chuck Lin on 6/22/14.
//  Copyright (c) 2014 Chuck. All rights reserved.
//

#import "CKViewController.h"
#import "CKTableAlertView.h"

@interface CKViewController ()

@end

@implementation CKViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btnShowAlert = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnShowAlert setTitle:@"Show Alert Dialog" forState:UIControlStateNormal];
    [btnShowAlert addTarget:self action:@selector(showAlert:) forControlEvents:UIControlEventTouchUpInside];
    [btnShowAlert sizeToFit];
    btnShowAlert.center = CGPointMake(100, 100);
    
    [self.view addSubview:btnShowAlert];
}

- (void)showAlert:(id)sender
{
    NSArray *data = [[NSArray alloc] initWithObjects:@"1", @"2", nil];
    CKTableAlertView *alert = [[CKTableAlertView alloc] initWithArray:data title:@"This is a title" hasCancelButton:YES];
    [alert setDelegate:self];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma CKTableAlerView Delegate Method
- (void)tableAlert:(CKTableAlertView *)tableAlert didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Row #%@ selected", [NSNumber numberWithInteger:indexPath.row]);
//    [tableAlert hide];
}

@end