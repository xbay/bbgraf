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
  VaultNavigationBar  *view = [[VaultNavigationBar alloc]initWithFrame:CGRectZero];
  [view setNeedsDisplay];
  return view;
}

RCT_EXPORT_VIEW_PROPERTY(backgroundColor, UIColor)


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
{
  UIColor *_backgroundColor;
}

-(instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if(self){
    _backgroundColor = [self defaultBackgroundColor];
    
    _currentSizeTextView = [UITextView new];
    _currentSizeTextView.editable = NO;
    _currentSizeTextView.text = [self defaultTitle];
    _currentSizeTextView.textColor = [UIColor blackColor];
    _currentSizeTextView.backgroundColor = [UIColor whiteColor];
    _currentSizeTextView.font = [UIFont boldSystemFontOfSize:14];
    
    [self addSubview:_currentSizeTextView];
    
    _shareView = [VaultShapeView new];
    _shareView.drawColor = _backgroundColor;
    [self addSubview:_shareView];
    
    
    _shareViewSmall = [VaultShapeView new];
    _shareViewSmall.drawColor = _backgroundColor;
    [self addSubview:_shareViewSmall];
    
  }
  return self;
}

// step 2
- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  if(backgroundColor){
    _backgroundColor = backgroundColor;
  }else{
    _backgroundColor = [self defaultBackgroundColor];
  }
  [self updateView];
  
}

# pragma mark ===========

- (void)updateView{
  // do update background and text
}

// step 3

- (void)layoutSubviews
{
  [_currentSizeTextView setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
  
  
  [_shareView setFrame:CGRectMake(0, 60, self.frame.size.width, self.frame.size.height/2)];
  [_shareViewSmall setFrame:CGRectMake(50, 150, self.frame.size.width/2, 100)];
}



- (UIColor *)defaultBackgroundColor
{
  return [UIColor colorWithRed:125/255.0 green:185/255.0 blue:255/255.0 alpha:0.5];
}

- (NSString *)defaultTitle
{
  return @"baby doodle";
}


@end
