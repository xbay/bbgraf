//
//  RoundHeaderView.m
//  babydoodle
//
//  Created by mengqian on 28/3/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "VaultNavigationBar.h"
#import "RCTViewManager.h"
#import "RCTRootViewDelegate.h"
#import "VaultShapeView.h"

#pragma mark VaultNavigationBarManager

@interface VaultNavigationBarManager: RCTViewManager

@end

@implementation VaultNavigationBarManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  VaultShapeView  *view = [[VaultShapeView alloc]initWithFrame:CGRectZero];
  [view setNeedsDisplay];
  return view;
}

@end

#pragma mark RoundHeaderView

@interface VaultNavigationBar ()
{
  UITextView *_currentSizeTextView;
  VaultShapeView *_shareView;
  VaultShapeView *_shareViewSmall;
}

@end

@implementation VaultNavigationBar

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
    
    _shareView = [VaultShapeView new];
    _shareView.backgroundColor = [UIColor clearColor];

    [self addSubview:_shareView];
    
    
    _shareViewSmall = [VaultShapeView new];
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
