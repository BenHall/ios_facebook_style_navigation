//
//  ios_facebook_style_navigationViewController.m
//  ios_facebook_style_navigation
//
//  Created by Ben Hall on 11/02/11.
//  Copyright 2011 Ben Hall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import "ios_facebook_style_navigationViewController.h"

@implementation ios_facebook_style_navigationViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

@synthesize mainView;

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [mainView release];
    [super dealloc];
}

-(void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
   if ([animationID isEqualToString:@"slideMenu"]){
       UIView *sq = (UIView *) context;
       [sq removeFromSuperview];
       [sq release];
   }
}

- (IBAction)menuTapped {
    NSLog(@"Menu tapped");
    CGRect frame = self.mainView.frame;
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector( animationDidStop:finished:context: )];
    [UIView beginAnimations:@"slideMenu" context:self.mainView];

    if(menuOpen) {
        frame.origin.x = 0;
        menuOpen = NO;
    }
    else
    {
        frame.origin.x = 160;
        menuOpen = YES;
    }

    self.mainView.frame = frame;
    [UIView commitAnimations];
}


@end
