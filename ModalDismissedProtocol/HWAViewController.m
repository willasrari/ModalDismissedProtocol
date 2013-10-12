//
//  HWAViewController.m
//  ModalDismissedProtocol
//
//  Created by Will Asrari on 10/11/13.
//  Copyright (c) 2013 Will Asrari. All rights reserved.
//

#import "HWAViewController.h"
#import "HWAModalViewController.h"

@implementation HWAViewController

@synthesize labelName = _labelName;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didDismissWithObject:(id)object {
    if (object) {
        [[self labelName] setText:object];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"HossModal"]) {
        HWAModalViewController *controller = (HWAModalViewController *)segue.destinationViewController;
        [controller setDelegate:self];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end