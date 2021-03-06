//
//  Keyboard_Aware_ViewControllerViewController.m
//  Keyboard-Aware-ViewController
//
//  Created by Avraham Shukron on 7/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ExampleViewController.h"

@implementation ExampleViewController
@synthesize txtUsername;
@synthesize txtPassword;

- (void)dealloc
{
    [txtUsername release];
    [txtPassword release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.txtPassword.inputAccessoryView = self.inputAccessoryView;
    self.txtUsername.inputAccessoryView = self.inputAccessoryView;
}

- (void)viewDidUnload
{
    [self setTxtUsername:nil];
    [self setTxtPassword:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
