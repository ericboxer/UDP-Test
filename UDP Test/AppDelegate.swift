//
//  AppDelegate.swift
//  UDP Test
//
//  Created by Eric Boxer on 2/17/16.
//  Copyright © 2016 Eric Boxer. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
        return true
        // Quits the applciaiton once the wondow is closed
    }
}

