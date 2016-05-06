//
//  ViewController1.h
//  iOSTabbedViewTechnicise
//
//  Created by Souman Paul on 5/6/16.
//  Copyright © 2016 technicise. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController1 : UIViewController
@property (strong, nonatomic) IBOutlet UIView *TabButtonsView;
@property (strong, nonatomic) IBOutlet UILabel *label1;

- (IBAction)RemoveMember:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *memberRemoveOutlet;

- (IBAction)ShowMember:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *ShowMemberOutlet;


@end
