//
//  ShareView.m
//  babydoodle
//
//  Created by mengqian on 29/3/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "ShareView.h"

@implementation ShareView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/

- (void)drawRect:(CGRect)rect {
  NSLog(@"%f",rect.size.width);
  
  CGFloat height = 44;
  CGFloat curvingRate = 1.6;
  CGFloat width = rect.size.width;
  
  // Draw shape
  
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  CGContextSetLineWidth(context, 1.0);
  CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
  
  CGContextMoveToPoint(context, 0, 0);
  CGContextAddLineToPoint(context, 0, height);
  CGContextAddQuadCurveToPoint(context, width/2, height*curvingRate, width, height);
  CGContextAddLineToPoint(context, width, 0);
  CGContextAddLineToPoint(context, 0, 0);

  UIColor *fillColor = [UIColor colorWithRed:125/255.0 green:185/255.0 blue:255/255.0 alpha:0.5];

  CGContextSetFillColorWithColor(context, fillColor.CGColor);
  CGContextFillPath(context);
  
  
  // 暂时不能一起画
//    CGContextStrokePath(context);

}

@end
