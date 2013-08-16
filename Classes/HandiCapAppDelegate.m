//
//  HandiCapAppDelegate.m
//  HandiCap
//
//  Created by . . on 7/2/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import "HandiCapAppDelegate.h"
#import "HandiCapViewController.h"

@implementation HandiCapAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
