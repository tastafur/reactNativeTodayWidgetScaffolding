//
//  Linking.h
//  widget
//
//  Created by rubén romero díaz on 08/10/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <UIKit/UIKit.h>

@interface Linking : NSObject <RCTBridgeModule>

- (id)initWithContext:(NSExtensionContext*)context;

@end
