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
  VaultShapeView *_shapeView;
  VaultShapeView *_shapeViewShadow;
  UIColor *_shadowColor;
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
    _currentSizeTextView.textAlignment = NSTextAlignmentCenter;
    _currentSizeTextView.textColor = [UIColor whiteColor];
    _currentSizeTextView.backgroundColor = [UIColor clearColor];
    _currentSizeTextView.font = [UIFont boldSystemFontOfSize:20];
    
    _currentSizeTextView.text = [self defaultTitle];

    

    _shapeViewShadow = [VaultShapeView new];
    [self addSubview:_shapeViewShadow];
    
    _shapeView = [VaultShapeView new];
    [self addSubview:_shapeView];

    
//    [self addSubview:_currentSizeTextView];

    
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
  
  _shadowColor = [self darkerColorForColor:_backgroundColor];
  
  [self updateView];
  
}

# pragma mark ===========

- (void)updateView{
  // do update background and text
  _shapeView.drawColor = _backgroundColor;
  _shapeViewShadow.drawColor = _shadowColor;

}

// step 3

- (void)layoutSubviews
{
  [_currentSizeTextView setFrame:CGRectMake(0, 20, self.frame.size.width, 44)];
  
  
  [_shapeView setFrame:CGRectMake(0, 0, self.frame.size.width, 100)];
  [_shapeViewShadow setFrame:CGRectMake(0, 5, self.frame.size.width, 100)];
}



- (UIColor *)defaultBackgroundColor
{
  return [UIColor colorWithRed:111/255.0 green:192/255.0 blue:246/255.0 alpha:1];
}

- (NSString *)defaultTitle
{
  return @"baby doodle";
}


#pragma mark -- utils

- (UIColor *)lighterColorForColor:(UIColor *)c
{
  CGFloat r, g, b, a;
  if ([c getRed:&r green:&g blue:&b alpha:&a])
    return [UIColor colorWithRed:MIN(r + 0.08, 1.0)
                           green:MIN(g + 0.08, 1.0)
                            blue:MIN(b + 0.08, 1.0)
                           alpha:a];
  return nil;
}

- (UIColor *)darkerColorForColor:(UIColor *)c
{
  CGFloat r, g, b, a;
  if ([c getRed:&r green:&g blue:&b alpha:&a])
    return [UIColor colorWithRed:MAX(r - 0.08, 0.0)
                           green:MAX(g - 0.08, 0.0)
                            blue:MAX(b - 0.08, 0.0)
                           alpha:a];
  return nil;
}


@end
