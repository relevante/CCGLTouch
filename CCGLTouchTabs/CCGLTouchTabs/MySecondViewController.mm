//
//  MySecondViewController.mm
//  CCGLTouchTabs example
//
//  Created by Matthieu Savary on 09/09/11.
//  Copyright (c) 2011 SMALLAB.ORG. All rights reserved.
//
//  More info on the CCGLTouch project >> http://www.smallab.org/code/ccgl-touch/
//  License & disclaimer >> see license.txt file included in the distribution package
//
//  Latest revision on 10/06/12.
//

#import "MySecondViewController.h"

@implementation MySecondViewController

/**
 *	setting glView(s) from the Delegate
 */

- (void)setGLView:(MySecondCinderGLView *)view
{
    secondCcglView = view;
}


/**
 *  Cocoa UI methods
 */

-(IBAction)listenToCubeSizeSlider:(id)sender {
    UISlider *slider = (UISlider *)sender;
    [secondCcglView setCubeSize:(float)[slider value]];
}



/**
 *  Releasing
 */

- (void)dealloc
{
    [secondCcglView release];
    [super dealloc];
}

@end