//
//  HWAModalViewController.m
//  ModalDismissedProtocol
//
//  Created by Will Asrari on 10/11/13.
//  Copyright (c) 2013 Will Asrari. All rights reserved.
//

#import "HWAModalViewController.h"

@implementation HWAModalViewController

@synthesize textField = _textField;
@synthesize delegate = _delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)doDismissModal:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        if ([self.delegate respondsToSelector:@selector(didDismissWithObject:)]) {
            [self.delegate performSelector:@selector(didDismissWithObject:) withObject:self.textField.text];
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end