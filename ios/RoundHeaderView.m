//
//  RoundHeaderView.m
//  babydoodle
//
//  Created by mengqian on 28/3/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "RoundHeaderView.h"
#import "RCTViewManager.h"
#import "RCTRootViewDelegate.h"
#import "ShareView.h"

#pragma mark RoundHeaderViewManager

@interface RoundHeaderViewManager: RCTViewManager

@end

@implementation RoundHeaderViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  RoundHeaderView  *view = [[RoundHeaderView alloc]initWithFrame:CGRectZero];
  [view setNeedsDisplay];
  return view;
}

@end

#pragma mark RoundHeaderView

@interface RoundHeaderView ()
{
  UITextView *_currentSizeTextView;
  ShareView *_shareView;
  ShareView *_shareViewSmall;
}

@end

@implementation RoundHeaderView

-(instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if(self){
    _currentSizeTextView = [UITextView new];
    _currentSizeTextView.editable = NO;
    _currentSizeTextView.text = @"Keep Clam and carry on!";
    _currentSizeTextView.textColor = [UIColor blackColor];
    _currentSizeTextView.backgroundColor = [UIColor whiteColor];
    _currentSizeTextView.font = [UIFont boldSystemFontOfSize:14];
    
    [self addSubview:_currentSizeTextView];
    
    _shareView = [ShareView new];
    _shareView.backgroundColor = [UIColor clearColor];

    [self addSubview:_shareView];
    
    
    _shareViewSmall = [ShareView new];
    _shareViewSmall.backgroundColor = [UIColor clearColor];
    
    [self addSubview:_shareViewSmall];
    
  }
  return self;
}

- (void)layoutSubviews
{
  [_currentSizeTextView setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
  [_shareView setFrame:CGRectMake(0, 60, self.frame.size.width, self.frame.size.height/2)];
  
  [_shareViewSmall setFrame:CGRectMake(50, 150, self.frame.size.width/2, 100)];


}


@end
