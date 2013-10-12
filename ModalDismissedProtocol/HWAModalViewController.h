//
//  HWAModalViewController.h
//  ModalDismissedProtocol
//
//  Created by Will Asrari on 10/11/13.
//  Copyright (c) 2013 Will Asrari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HWAModalDismissedProtocol.h"

@interface HWAModalViewController : UIViewController

- (IBAction)doDismissModal:(id)sender;

@property(nonatomic, weak) id<HWAModalDismissedProtocol> delegate;
@property(nonatomic, strong) IBOutlet UITextField *textField;

@end