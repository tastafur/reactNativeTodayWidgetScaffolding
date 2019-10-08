//
//  TodayViewController.m
//  widget
//
//  Created by rubén romero díaz on 08/10/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

#import "DisplayMode.h"
#import "Linking.h"

DisplayMode* displayMode;
Linking* linking;

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)loadView {
  NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings]  jsBundleURLForBundleRoot:@"index.widget"
                                                                          fallbackResource:nil
                                                                         fallbackExtension:nil];
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"widget"
                                               initialProperties:nil
                                                   launchOptions:nil];
  
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1 green:1 blue:1 alpha:0];
  self.view = rootView;
  
  displayMode = [[DisplayMode alloc]initWithContext:self.extensionContext];
  linking = [[Linking alloc]initWithContext:self.extensionContext];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
