//
//  NBViewController.m
//  demo
//
//  Created by Josh Justice on 3/9/14.
//  Copyright (c) 2014 NeedBee. All rights reserved.
//

#import "NBViewController.h"
#import "NSString+SmartTrim.h"

@interface NBViewController ()

@property (nonatomic,retain) IBOutlet UITextView *src;
@property (nonatomic,retain) IBOutlet UITextView *dest;

@end

@implementation NBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self textViewDidChange:_src];
}

-(void)textViewDidChange:(UITextView *)textView
{
    _dest.text = [_src.text smartTrimToLength:140
                                   withPrefix:@"SmartTrim: "
                                       suffix:@" (awesome, huh?)"];
}

@end
