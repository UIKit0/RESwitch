//
//  RootViewController.m
//  SwitchTest
//
//  Created by Roman Efimov on 2/4/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "RootViewController.h"
#import "RESwitch.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[RESwitch appearance] setBackgroundImage:[UIImage imageNamed:@"round-switch-track"]];
    [[RESwitch appearance] setOverlayImage:[UIImage imageNamed:@"round-switch-overlay"]];
    [[RESwitch appearance] setKnobImage:[UIImage imageNamed:@"round-switch-thumb"]];
    [[RESwitch appearance] setHighlightedKnobImage:[UIImage imageNamed:@"round-switch-thumb-highlight"]];
    [[RESwitch appearance] setKnobOffset:CGSizeMake(4, -3)];
    [[RESwitch appearance] setCornerRadius:14];
    [[RESwitch appearance] setFont:[UIFont boldSystemFontOfSize:17]];
    [[RESwitch appearance] setTextOffset:CGSizeMake(0, 0) forLabel:RESwitchLabelOn];
    [[RESwitch appearance] setTextOffset:CGSizeMake(0, 0) forLabel:RESwitchLabelOff];
    [[RESwitch appearance] setTextShadowOffset:CGSizeMake(0, -1)];
	
    RESwitch *switchView = [[RESwitch alloc] initWithFrame:CGRectMake(30, 100, 76, 28)];
    [switchView setBackgroundImage:[UIImage imageNamed:@"Switch_Background"]];
    [switchView setKnobImage:[UIImage imageNamed:@"Switch_Knob"]];
    [switchView setOverlayImage:nil];
    [switchView setHighlightedKnobImage:nil];
    [switchView setCornerRadius:0];
    [switchView setKnobOffset:CGSizeMake(0, 0)];
    [switchView setTextShadowOffset:CGSizeMake(0, 0)];
    [switchView setFont:[UIFont boldSystemFontOfSize:14]];
    [switchView setTextOffset:CGSizeMake(3, 0) forLabel:RESwitchLabelOff];
    switchView.layer.cornerRadius = 4;
    switchView.layer.borderColor = [UIColor colorWithRed:224/255.0 green:36/255.0 blue:24/255.0 alpha:1].CGColor;
    switchView.layer.borderWidth = 2;
    switchView.layer.masksToBounds = YES;
    [self.view addSubview:switchView];
    
    RESwitch *switchView2 = [[RESwitch alloc] initWithFrame:CGRectMake(30, 200, 76, 28)];
    [self.view addSubview:switchView2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end