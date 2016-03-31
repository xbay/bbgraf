//
//  Person.m
//  babydoodle
//
//  Created by mengqian on 29/3/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "Person.h"
#import "RCTLog.h"
@implementation Person

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(greeting:(NSString *)name){
  NSLog(@"Hi, %@!", name);
//  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
  RCTLogInfo(@"RCTLogInfo Hi, %@!", name);
}

@end
