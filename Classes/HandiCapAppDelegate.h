//
//  HandiCapAppDelegate.h
//  HandiCap
//
//  Created by . . on 7/2/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HandiCapViewController;

@interface HandiCapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HandiCapViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HandiCapViewController *viewController;

@end

