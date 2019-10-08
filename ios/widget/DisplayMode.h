//
//  DisplayMode.h
//  widget
//
//  Created by rubén romero díaz on 08/10/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <UIKit/UIKit.h>
#import "TodayViewController.h"

@interface DisplayMode : NSObject <RCTBridgeModule>

- (id)initWithContext:(NSExtensionContext*)Context;

+ (float)getMaxHeight;

@end
