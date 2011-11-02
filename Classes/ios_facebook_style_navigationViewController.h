//
//  ios_facebook_style_navigationViewController.h
//  ios_facebook_style_navigation
//
//  Created by Ben Hall on 11/02/11.
//  Copyright 2011 Ben Hall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ios_facebook_style_navigationViewController : UIViewController {
    BOOL *menuOpen;
    IBOutlet UIView *mainView;
}


@property(nonatomic, retain) UIView *mainView;

-(IBAction)menuTapped;

@end

