//
//  Linking.m
//  widget
//
//  Created by rubén romero díaz on 31/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "Linking.h"

#import <NotificationCenter/NotificationCenter.h>
#import <Foundation/Foundation.h>

@implementation Linking

NSExtensionContext* widgetContext;

RCT_EXPORT_MODULE();

- (id)initWithContext:(NSExtensionContext *)context {
  self = [super init];
  widgetContext = context;
  return self;
}

RCT_EXPORT_METHOD(openURL:(NSURL *)url){
  [widgetContext openURL:url completionHandler:nil];
}

@end
