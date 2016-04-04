//
//  ShareView.m
//  babydoodle
//
//  Created by mengqian on 29/3/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "VaultShapeView.h"

@implementation VaultShapeView

@synthesize drawColor = _drawColor;


- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    // 默认去掉背景色
    self.backgroundColor = [UIColor clearColor];
  }
  return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/

- (void)drawRect:(CGRect)rect {
  NSLog(@"%f",rect.size.width);
  
  CGFloat height = 60;
  CGFloat curvingRate = 1.7;
  CGFloat width = rect.size.width;
  
  // Draw shape
  
  CGContextRef context = UIGraphicsGetCurrentContext();
  
//  CGContextSetLineWidth(context, 1.0);
//  CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
  
  CGContextMoveToPoint(context, 0, 0);
  CGContextAddLineToPoint(context, 0, height);
  CGContextAddQuadCurveToPoint(context, width/2, height*curvingRate, width, height);
  CGContextAddLineToPoint(context, width, 0);
  CGContextAddLineToPoint(context, 0, 0);

  CGContextSetFillColorWithColor(context, self.drawColor.CGColor);
  CGContextFillPath(context);
  
  
  // 暂时不能一起画
//    CGContextStrokePath(context);

}

@end
