//
//  ios_facebook_style_navigationAppDelegate.h
//  ios_facebook_style_navigation
//
//  Created by Ben Hall on 11/02/11.
//  Copyright 2011 Ben Hall. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ios_facebook_style_navigationViewController;

@interface ios_facebook_style_navigationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ios_facebook_style_navigationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ios_facebook_style_navigationViewController *viewController;

@end

