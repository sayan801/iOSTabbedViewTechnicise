//
//  ViewController1.m
//  iOSTabbedViewTechnicise
//
//  Created by Souman Paul on 5/6/16.
//  Copyright © 2016 technicise. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1
{
    UIButton *HomeButton;
    UIButton *DiscussionButton;
    UIButton *ResourcesButton;
    UIButton *PollsQuestionButton;
    UIButton *MemberButton;
    UIButton *AboutButton;
    NSString *member;
    NSString *passValue;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    passValue=@"Home";
    member=@"";
    [self CreateTabButtons];
    
    
    UISwipeGestureRecognizer *swipeLeftButton = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizerButtonBar:)];
    swipeLeftButton.direction = UISwipeGestureRecognizerDirectionLeft;
    swipeLeftButton.numberOfTouchesRequired=1;
    
    [self.TabButtonsView addGestureRecognizer:swipeLeftButton];
    
    
    UISwipeGestureRecognizer *swipeRightButton = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizerButtonBar:)];
    swipeRightButton.direction = UISwipeGestureRecognizerDirectionRight;
    
    [self.TabButtonsView addGestureRecognizer:swipeRightButton];
    
    
    
    [self.ShowMemberOutlet setHidden:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



////to swipe left

-(void)slideToLeftWithGestureRecognizerButtonBar:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
       // swipe=@"right";
        
        CGFloat ViewX=self.TabButtonsView.frame.origin.x;
         NSLog(@"Left ViewX=%f",ViewX);
        if(ViewX==0.000000 && ![member isEqualToString:@"removed"])
        {
            self.TabButtonsView.frame = CGRectOffset(self.TabButtonsView.frame, -175.0, 0.0);
        }
        else if(ViewX==0.000000 && [member isEqualToString:@"removed"])
        {
            self.TabButtonsView.frame = CGRectOffset(self.TabButtonsView.frame, -90.0, 0.0);
        }
        else if(ViewX==-175.000000)//-85.000000
        {
        }
        else if(ViewX==-90.000000)//-85.000000
        {
        }
        else if(ViewX==-85.000000)//-85.000000
        {
        }
        
    }];
    
}

//to swipe right
-(void)slideToRightWithGestureRecognizerButtonBar:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        
        CGFloat ViewX=self.TabButtonsView.frame.origin.x;
        NSLog(@"Right ViewX=%f",ViewX);
        if(ViewX==-175.000000)//-85.000000
        {
            self.TabButtonsView.frame = CGRectOffset(self.TabButtonsView.frame, 175.0, 0.0);//85.0
        }
        
        else if(ViewX==-85.000000)
        {
            self.TabButtonsView.frame = CGRectOffset(self.TabButtonsView.frame, 85.0, 0.0);
            
        }
        else if(ViewX==-90.000000)
        {
            self.TabButtonsView.frame = CGRectOffset(self.TabButtonsView.frame, 90.0, 0.0);
            
        }
        
    }];
}


-(void)aMethod1
{
    self.label1.text=@"Home";
    [HomeButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [DiscussionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [ResourcesButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [PollsQuestionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [MemberButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [AboutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    passValue=@"Home";
}
-(void)aMethod2
{
    self.label1.text=@"Discussion";
    [DiscussionButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [HomeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [ResourcesButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [PollsQuestionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [MemberButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [AboutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
     passValue=@"Discussion";
}
-(void)aMethod3
{
    self.label1.text=@"Resources";
    [ResourcesButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [HomeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [DiscussionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [PollsQuestionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [MemberButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [AboutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    passValue=@"Resources";
}
-(void)aMethod4
{
    self.label1.text=@"Polls/Questions";
    [PollsQuestionButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [HomeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [DiscussionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [ResourcesButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [MemberButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [AboutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    passValue=@"Polls/Questions";
}
-(void)aMethod5
{
    self.label1.text=@"Member";
    [MemberButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [HomeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [DiscussionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [ResourcesButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [PollsQuestionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [AboutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    passValue=@"Member";
}
-(void)aMethod6
{
    self.label1.text=@"About";
    [AboutButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [HomeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [DiscussionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [ResourcesButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [PollsQuestionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [MemberButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    passValue=@"About";
}


- (IBAction)RemoveMember:(id)sender {
    member=@"removed";
    
    [MemberButton removeFromSuperview];
    [AboutButton removeFromSuperview];
    [self.memberRemoveOutlet setHidden:YES];
    
    CGFloat ViewX=self.TabButtonsView.frame.origin.x;
    if(ViewX==-175.000000)//-85.000000
    {
        NSLog(@"-175");
    self.TabButtonsView.frame = CGRectOffset(self.TabButtonsView.frame, 90.0, 0.0);
    }
    else
    {
        NSLog(@"00");
      self.TabButtonsView.frame = CGRectOffset(self.TabButtonsView.frame, -90.0, 0.0);
    }
    
    AboutButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [AboutButton addTarget:self
                    action:@selector(aMethod6)
          forControlEvents:UIControlEventTouchUpInside];
    [AboutButton setTitle:@"About" forState:UIControlStateNormal];
    AboutButton.frame = CGRectMake(410.0, 0.0, 90.0, 35.0);
    [AboutButton setBackgroundColor:[UIColor blackColor]];
    [self.TabButtonsView addSubview:AboutButton];
    
    
    [self.ShowMemberOutlet setHidden:NO];
   
    
}
- (IBAction)ShowMember:(id)sender {
    [self.TabButtonsView removeFromSuperview];
    
    [self.ShowMemberOutlet setHidden:YES];
    
    [self.memberRemoveOutlet setHidden:NO];
    
    member=@"";
    [self CreateTabButtons];
    
}

-(void)CreateTabButtons
{
    HomeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [HomeButton addTarget:self
                   action:@selector(aMethod1)
         forControlEvents:UIControlEventTouchUpInside];
    [HomeButton setTitle:@"Home" forState:UIControlStateNormal];
    [HomeButton setBackgroundColor:[UIColor blackColor]];
    if([passValue isEqualToString:@"Home"])
    {
    [HomeButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    }
    HomeButton.frame = CGRectMake(0.0, 0.0, 80.0, 35.0);
    [self.TabButtonsView addSubview:HomeButton];
    
    
    DiscussionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [DiscussionButton addTarget:self
                         action:@selector(aMethod2)
               forControlEvents:UIControlEventTouchUpInside];
    [DiscussionButton setTitle:@"Discussion" forState:UIControlStateNormal];
    DiscussionButton.frame = CGRectMake(85.0, 0.0, 90.0, 35.0);
    [DiscussionButton setBackgroundColor:[UIColor blackColor]];
    if([passValue isEqualToString:@"Discussion"])
    {
        [DiscussionButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    }
    [self.TabButtonsView addSubview:DiscussionButton];
    
    
    
    ResourcesButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [ResourcesButton addTarget:self
                        action:@selector(aMethod3)
              forControlEvents:UIControlEventTouchUpInside];
    [ResourcesButton setTitle:@"Resources" forState:UIControlStateNormal];
    ResourcesButton.frame = CGRectMake(180.0, 0.0, 90.0, 35.0);
    [ResourcesButton setBackgroundColor:[UIColor blackColor]];
    if([passValue isEqualToString:@"Resources"])
    {
        [ResourcesButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    }
    [self.TabButtonsView addSubview:ResourcesButton];
    
    
    
    PollsQuestionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [PollsQuestionButton addTarget:self
                            action:@selector(aMethod4)
                  forControlEvents:UIControlEventTouchUpInside];
    [PollsQuestionButton setTitle:@"Polls/Questions" forState:UIControlStateNormal];
    PollsQuestionButton.frame = CGRectMake(275.0, 0.0, 130.0, 35.0);
    [PollsQuestionButton setBackgroundColor:[UIColor blackColor]];
    if([passValue isEqualToString:@"Polls/Questions"])
    {
        [PollsQuestionButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    }
    [self.TabButtonsView addSubview:PollsQuestionButton];
    
    
    MemberButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [MemberButton addTarget:self
                     action:@selector(aMethod5)
           forControlEvents:UIControlEventTouchUpInside];
    [MemberButton setTitle:@"Member" forState:UIControlStateNormal];
    MemberButton.frame = CGRectMake(410.0, 0.0, 90.0, 35.0);
    [MemberButton setBackgroundColor:[UIColor blackColor]];
    if([passValue isEqualToString:@"Member"])
    {
        [MemberButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    }
    [self.TabButtonsView addSubview:MemberButton];
    
    AboutButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [AboutButton addTarget:self
                    action:@selector(aMethod6)
          forControlEvents:UIControlEventTouchUpInside];
    [AboutButton setTitle:@"About" forState:UIControlStateNormal];
    AboutButton.frame = CGRectMake(510.0, 0.0, 90.0, 35.0);
    [AboutButton setBackgroundColor:[UIColor blackColor]];
    if([passValue isEqualToString:@"About"])
    {
        [AboutButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    }
    [self.TabButtonsView addSubview:AboutButton];
    
    self.TabButtonsView.frame = CGRectMake(0, 174, 600, 60);
    [self.view addSubview:self.TabButtonsView];
    

}

@end
