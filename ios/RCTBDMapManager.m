//
//  RCTMapManager.m
//  babydoodle
//
//  Created by mengqian on 28/3/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <MapKit/MapKit.h>

#import "RCTBDMapManager.h"


@implementation RCTBDMapManager

RCT_EXPORT_MODULE();


- (UIView *)view
{
  return [[MKMapView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(pitchEnabled, BOOL)


@end

