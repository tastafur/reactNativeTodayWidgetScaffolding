//
//  DisplayMode.m
//  widget
//
//  Created by rubén romero díaz on 08/10/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//


#import "DisplayMode.h"

#import <NotificationCenter/NotificationCenter.h>
#import <Foundation/Foundation.h>

@implementation DisplayMode

static float maxHeight = 110;

NSExtensionContext* extensionContext;

RCT_EXPORT_MODULE();

- (id)initWithContext:(NSExtensionContext *)Context {
  self = [super init];
  extensionContext = Context;
  return self;
}

+ (float)getMaxHeight {
  return maxHeight;
}

RCT_EXPORT_METHOD(setExpandable:(BOOL *)expandable height:(float)height){
  maxHeight=height;
  if (@available(iOS 10.0, *)) {
    if (expandable) {
      [extensionContext setWidgetLargestAvailableDisplayMode:NCWidgetDisplayModeExpanded];
    } else {
      [extensionContext setWidgetLargestAvailableDisplayMode:NCWidgetDisplayModeCompact];
    }
  }
}

@end
