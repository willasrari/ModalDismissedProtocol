//
//  HWAViewController.h
//  ModalDismissedProtocol
//
//  Created by Will Asrari on 10/11/13.
//  Copyright (c) 2013 Will Asrari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HWAModalDismissedProtocol.h"

@interface HWAViewController : UIViewController<HWAModalDismissedProtocol>

@property(nonatomic, strong) IBOutlet UILabel *labelName;

@end