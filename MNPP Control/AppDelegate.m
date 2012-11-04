//
//  AppDelegate.m
//  MNPP Control
//
//  Created by Andrew on 11/3/12.
//  Copyright (c) 2012 Andrew. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    self.nginxIsRunning = false;
    [self.nginxButton setKeyEquivalent:@"n"];
    [self.nginxButton setTitle:@"Start"];
    [self.nginxLoading setHidden:YES];
    [self.nginxStatus setHidden:NO];
    [self.nginxStatus setImage:[NSImage imageNamed:NSImageNameStatusUnavailable]];
    
    self.perconaIsRunning = false;
    [self.perconaButton setKeyEquivalent:@"e"];
    [self.perconaButton setTitle:@"Start"];
    [self.perconaLoading setHidden:YES];
    [self.perconaStatus setHidden:NO];
    [self.perconaStatus setImage:[NSImage imageNamed:NSImageNameStatusUnavailable]];
    
    self.phpIsRunning = false;
    [self.phpButton setKeyEquivalent:@"p"];
    [self.phpButton setTitle:@"Start"];
    [self.phpLoading setHidden:YES];
    [self.phpStatus setHidden:NO];
    [self.phpStatus setImage:[NSImage imageNamed:NSImageNameStatusUnavailable]];
}

- (IBAction)nginxControl:(id)sender {
    [self.nginxStatus setHidden:YES];
    [self.nginxLoading setHidden:NO];
    [self.nginxLoading startAnimation:(sender)];
    
    if (!self.nginxIsRunning) {
        NSDictionary *error = [NSDictionary new];
        NSString *script =  @"do shell script \"/Applications/MNPP/init/nginx.sh start\" with administrator privileges";
        NSAppleScript *appleScript = [[NSAppleScript new] initWithSource:script];
        if ([appleScript executeAndReturnError:&error]) {
            NSLog(@"success! Started nginx.");
            self.nginxIsRunning = true;
            [self.nginxButton setTitle:@"Stop"];
            [self.nginxLoading stopAnimation:(sender)];
            [self.nginxLoading setHidden:YES];
            [self.nginxStatus setImage:[NSImage imageNamed:NSImageNameStatusAvailable]];
            [self.nginxStatus setHidden:NO];
        } else {
            NSLog(@"failure! Could not start nginx.");
            [self.nginxLoading stopAnimation:(sender)];
            [self.nginxLoading setHidden:YES];
            [self.nginxStatus setHidden:NO];
        }
        
    }
    
    else {
        NSDictionary *error = [NSDictionary new];
        NSString *script =  @"do shell script \"/Applications/MNPP/init/nginx.sh stop\" with administrator privileges";
        NSAppleScript *appleScript = [[NSAppleScript new] initWithSource:script];
        if ([appleScript executeAndReturnError:&error]) {
            NSLog(@"success! Stopped nginx.");
            self.nginxIsRunning = false;
            [self.nginxButton setTitle:@"Start"];
            [self.nginxLoading stopAnimation:(sender)];
            [self.nginxLoading setHidden:YES];
            [self.nginxStatus setImage:[NSImage imageNamed:NSImageNameStatusUnavailable]];
            [self.nginxStatus setHidden:NO];
        } else {
            NSLog(@"failure! Could not stop nginx.");
            [self.nginxLoading stopAnimation:(sender)];
            [self.nginxLoading setHidden:YES];
            [self.nginxStatus setHidden:NO];
        }
    }

}

- (IBAction)perconaControl:(id)sender {
    [self.perconaStatus setHidden:YES];
    [self.perconaLoading setHidden:NO];
    [self.perconaLoading startAnimation:(sender)];
    
    if (!self.perconaIsRunning) {
        NSDictionary *error = [NSDictionary new];
        NSString *script =  @"do shell script \"/Applications/MNPP/init/percona.sh start\" with administrator privileges";
        NSAppleScript *appleScript = [[NSAppleScript new] initWithSource:script];
        if ([appleScript executeAndReturnError:&error]) {
            NSLog(@"success! Started percona.");
            self.perconaIsRunning = true;
            [self.perconaButton setTitle:@"Stop"];
            [self.perconaLoading stopAnimation:(sender)];
            [self.perconaLoading setHidden:YES];
            [self.perconaStatus setImage:[NSImage imageNamed:NSImageNameStatusAvailable]];
            [self.perconaStatus setHidden:NO];
        } else {
            NSLog(@"failure! Could not start percona.");
            [self.perconaLoading stopAnimation:(sender)];
            [self.perconaLoading setHidden:YES];
            [self.perconaStatus setHidden:NO];
        }
        
    }
    
    else {
        NSDictionary *error = [NSDictionary new];
        NSString *script =  @"do shell script \"/Applications/MNPP/init/percona.sh stop\" with administrator privileges";
        NSAppleScript *appleScript = [[NSAppleScript new] initWithSource:script];
        if ([appleScript executeAndReturnError:&error]) {
            NSLog(@"success! Stopped percona.");
            self.perconaIsRunning = false;
            [self.perconaButton setTitle:@"Start"];
            [self.perconaLoading stopAnimation:(sender)];
            [self.perconaLoading setHidden:YES];
            [self.perconaStatus setImage:[NSImage imageNamed:NSImageNameStatusUnavailable]];
            [self.perconaStatus setHidden:NO];
        } else {
            NSLog(@"failure! Could not stop percona.");
            [self.perconaLoading stopAnimation:(sender)];
            [self.perconaLoading setHidden:YES];
            [self.perconaStatus setHidden:NO];
        }
    }
}

- (IBAction)phpControl:(id)sender {
    [self.phpStatus setHidden:YES];
    [self.phpLoading setHidden:NO];
    [self.phpLoading startAnimation:(sender)];
    
    if (!self.phpIsRunning) {
        NSDictionary *error = [NSDictionary new];
        NSString *script =  @"do shell script \"/Applications/MNPP/init/php.sh start\" with administrator privileges";
        NSAppleScript *appleScript = [[NSAppleScript new] initWithSource:script];
        if ([appleScript executeAndReturnError:&error]) {
            NSLog(@"success! Started php.");
            self.phpIsRunning = true;
            [self.phpButton setTitle:@"Stop"];
            [self.phpLoading stopAnimation:(sender)];
            [self.phpLoading setHidden:YES];
            [self.phpStatus setImage:[NSImage imageNamed:NSImageNameStatusAvailable]];
            [self.phpStatus setHidden:NO];
        } else {
            NSLog(@"failure! Could not start percona.");
            [self.phpLoading stopAnimation:(sender)];
            [self.phpLoading setHidden:YES];
            [self.phpStatus setHidden:NO];
        }
        
    }
    
    else {
        NSDictionary *error = [NSDictionary new];
        NSString *script =  @"do shell script \"/Applications/MNPP/init/php.sh stop\" with administrator privileges";
        NSAppleScript *appleScript = [[NSAppleScript new] initWithSource:script];
        if ([appleScript executeAndReturnError:&error]) {
            NSLog(@"success! Stopped php.");
            self.phpIsRunning = false;
            [self.phpButton setTitle:@"Start"];
            [self.phpLoading stopAnimation:(sender)];
            [self.phpLoading setHidden:YES];
            [self.phpStatus setImage:[NSImage imageNamed:NSImageNameStatusUnavailable]];
            [self.phpStatus setHidden:NO];
        } else {
            NSLog(@"failure! Could not stop php.");
            [self.phpLoading stopAnimation:(sender)];
            [self.phpLoading setHidden:YES];
            [self.phpStatus setHidden:NO];
        }
    }
}

@end
