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
    
    NSMutableArray *TabButtonsArray;
    NSMutableArray *TabButtonsArrayAll;
    UIButton *TabButtons;
    UILabel *TabLowerLabels;
    NSMutableArray *TabLowerLabelsArrayAll;
    NSUInteger previousselectindex;
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    previousselectindex=NSNotFound;
    
    TabButtonsArrayAll=[[NSMutableArray alloc]init];
    TabLowerLabelsArrayAll=[[NSMutableArray alloc]init];
    
    TabButtonsArray = [[NSMutableArray alloc] initWithObjects:@"Home",@"Discussions",@"Resources",@"Polls/Questions",@"Members",@"About",nil];
    
    [self CreatingTabButtons:TabButtonsArray];
    
    
    
    
    
    passValue=@"Home";
    member=@"";
   // [self CreateTabButtons];
    
    
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
    
    [self removeTabButtons];
    
    [self.memberRemoveOutlet setHidden:YES];
    [self.ShowMemberOutlet setHidden:NO];
    
    
    [TabButtonsArrayAll removeAllObjects];
    [TabLowerLabelsArrayAll removeAllObjects];
    
    [TabButtons removeFromSuperview];
    [TabLowerLabels removeFromSuperview];
    
    [self.TabButtonsView removeFromSuperview];
    
    
    /// Remove Member tab button
    [self RemoveButtons];
    
    [self CreatingTabButtons:TabButtonsArray];
    
    
    /*
    
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
     */
   
    
}
- (IBAction)ShowMember:(id)sender {
    [self removeTabButtons];
    
    [self.ShowMemberOutlet setHidden:YES];
    
    [self.memberRemoveOutlet setHidden:NO];
    
    [TabButtonsArrayAll removeAllObjects];
    [TabLowerLabelsArrayAll removeAllObjects];
    
    [TabButtons removeFromSuperview];
    [TabLowerLabels removeFromSuperview];
    
    [self.TabButtonsView removeFromSuperview];
    
    TabButtonsArray = [[NSMutableArray alloc] initWithObjects:@"Home",@"Discussions",@"Resources",@"Polls/Questions",@"Members",@"About",nil];
    
    
    [self CreatingTabButtons:TabButtonsArray];
    
    
}


-(void)RemoveButtons
{
  [TabButtonsArray removeObjectAtIndex:[TabButtonsArray indexOfObject:@"Members"]];
    
  //[TabButtonsArray removeObjectAtIndex:[TabButtonsArray indexOfObject:@"Resources"]];
    
    
}



//// Creating tab buttons dynamically

-(void)CreatingTabButtons:(NSArray *)Array
{
    
    for (NSUInteger k=0; k<Array.count; k++)
    {
        NSLog(@"array=%@",[Array objectAtIndex:k]);
        
        TabButtons=[[UIButton alloc]initWithFrame:CGRectMake(0+105*k, 0.0, 105, 25.0)];
        TabButtons.titleLabel.textAlignment=NSTextAlignmentCenter;
        [TabButtons setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [TabButtons setTitle:[Array objectAtIndex:k] forState:UIControlStateNormal];
        TabButtons.tag=k;
        [TabButtons addTarget:self
                   action:@selector(buttonPressedMethod:)
         forControlEvents:UIControlEventTouchDown];
        [TabButtonsArrayAll addObject:TabButtons];
        
       // [_TabButtonsView addSubview:TabButtons];
        
        /// Tab lower label
        
        TabLowerLabels=[[UILabel alloc]initWithFrame:CGRectMake(0+105*k, 23, 100, 3)];
        TabLowerLabels.backgroundColor=[UIColor whiteColor];
        TabLowerLabels.tag=k;
        [TabLowerLabelsArrayAll addObject:TabLowerLabels];
        //[self.TabButtonsView addSubview:TabLowerLabels];
        
    }
    
   // self.view_for_buttons.frame=CGRectMake(0, 144, 470, 26);
    
    [self drawTabButtons];
    
    
    UILabel *SingleLineLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 26, Array.count*105, 2)];
    SingleLineLabel.backgroundColor=[UIColor greenColor];
    [self.TabButtonsView addSubview:SingleLineLabel];
    
    
     self.TabButtonsView.frame = CGRectMake(0, 220, 600, 60);
    [self.view addSubview:self.TabButtonsView];
}



- (void)drawTabButtons {
    [_TabButtonsView removeFromSuperview];
    for(UIButton *tabButton in self->TabButtonsArrayAll)
    {
        [_TabButtonsView addSubview:tabButton];
        
    }
    
    for(UILabel *tabLabel in self->TabLowerLabelsArrayAll)
    {
        [_TabButtonsView addSubview:tabLabel];
        
    }
}


- (void)removeTabButtons {
    for(UIButton *tabButton in self->TabButtonsArrayAll)
    {
        [tabButton removeFromSuperview];
        
    }
    
    for(UILabel *tabLabel in self->TabLowerLabelsArrayAll)
    {
        [tabLabel removeFromSuperview];
        
    }
}


- (void) buttonPressedMethod : (id) sender {
    
    UIButton *selectedButton = (UIButton *)sender;
    
    NSUInteger selectedTabButtonId = selectedButton.tag;
    
    
    UILabel *selectedLabel = (UILabel *)sender;
    
    NSUInteger selectedTabLabelId = selectedLabel.tag;
    
    if (previousselectindex==NSNotFound)
    {
        UIButton *tabButton =TabButtonsArrayAll[selectedTabButtonId];
        [tabButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        
        UILabel *tabLabel =TabLowerLabelsArrayAll[selectedTabLabelId];
        tabLabel.backgroundColor=[UIColor greenColor];
        
        previousselectindex=selectedTabButtonId;
    }
    else if (previousselectindex!=selectedTabButtonId)
    {
        UIButton *tabButton =TabButtonsArrayAll[selectedTabButtonId];
        [tabButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        
        
        UILabel *tabLabel =TabLowerLabelsArrayAll[selectedTabLabelId];
        tabLabel.backgroundColor=[UIColor greenColor];
        
        //unchange previous tab button
        UIButton *tabButton1 =TabButtonsArrayAll[previousselectindex];
        [tabButton1 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        
        UILabel *tabLabel1 =TabLowerLabelsArrayAll[previousselectindex];
        tabLabel1.backgroundColor=[UIColor whiteColor];
        
        previousselectindex=selectedTabButtonId;
    }
    
}


/*

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
 */

@end
