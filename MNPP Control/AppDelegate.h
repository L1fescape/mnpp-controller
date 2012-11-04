//
//  AppDelegate.h
//  MNPP Control
//
//  Created by Andrew on 11/3/12.
//  Copyright (c) 2012 Andrew. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppKit/NSImage.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (assign) bool nginxIsRunning;
@property (assign) bool perconaIsRunning;
@property (assign) bool phpIsRunning;


- (IBAction)nginxControl:(id)sender;
- (IBAction)perconaControl:(id)sender;
- (IBAction)phpControl:(id)sender;


@property (weak) IBOutlet NSButton *nginxButton;
@property (weak) IBOutlet NSButton *perconaButton;
@property (weak) IBOutlet NSButton *phpButton;


@property (weak) IBOutlet NSProgressIndicator *nginxLoading;
@property (weak) IBOutlet NSProgressIndicator *perconaLoading;
@property (weak) IBOutlet NSProgressIndicator *phpLoading;


@property (weak) IBOutlet NSImageView *nginxStatus;
@property (weak) IBOutlet NSImageView *perconaStatus;
@property (weak) IBOutlet NSImageView *phpStatus;

@end
