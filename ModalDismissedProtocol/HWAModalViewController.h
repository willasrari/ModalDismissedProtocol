//
//  HWAModalViewController.h
//  ModalDismissedProtocol
//
//  Created by Will Asrari on 10/11/13.
//  Copyright (c) 2013 Will Asrari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HWAModalDismissedProtocol.h"

@interface HWAModalViewController : UIViewController {
    id<HWAModalDismissedProtocol> delegate;
}

- (IBAction)doDismissModal:(id)sender;

@property(nonatomic, weak) id delegate;
@property(nonatomic, strong) IBOutlet UITextField *textField;

@end