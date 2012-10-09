//
//  MyAppDelegate.mm
//  CCGLTouchFrames2Video example
//
//  Created by Matthieu Savary on 06/06/12.
//  Copyright (c) 2012 SMALLAB.ORG. All rights reserved.
//
//  More info on the CCGLTouch project >> http://www.smallab.org/code/ccgl-touch/
//  License & disclaimer >> see license.txt file included in the distribution package
//
//  Latest revision on 10/06/12.
//

#import "MyAppDelegate.h"


@implementation MyAppDelegate

- (void)launch
{    
	// our CCGLTouchView being added as a subview
	MyCCGLView *aView = [[MyCCGLView alloc] init];
	ccglView = aView;
	[aView release];
	ccglView = [[MyCCGLView alloc] initWithFrame:CGRectMake(0.0, 0.0, (float)[UIScreen mainScreen].bounds.size.width, (float)[UIScreen mainScreen].bounds.size.height)];
	[[viewController view] addSubview:ccglView];
	[[viewController view] sendSubviewToBack:ccglView];
	
    // set our view controller's prop that will hold a pointer to our newly created CCGLTouchView
    [viewController setCCGLView:ccglView];

    
    // viewController as the root view for our window
    super.window.rootViewController = viewController;
}

- (void)dealloc
{
    [viewController release];
    [ccglView release];
    [super dealloc];
}

@end
