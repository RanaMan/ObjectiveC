//
//  BNRDataViewController.m
//  Test3
//
//  Created by Rana Puri on 2013-08-31.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import "BNRDataViewController.h"

@interface BNRDataViewController ()

@end

@implementation BNRDataViewController

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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

@end
