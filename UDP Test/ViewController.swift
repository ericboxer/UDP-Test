//
//  ViewController.swift
//  UDP Test
//
//  Created by Eric Boxer on 2/17/16.
//  Copyright © 2016 Eric Boxer. All rights reserved.
//

import Cocoa
import CocoaAsyncSocket

class ViewController: NSViewController {

    @IBOutlet weak var ipaddy: NSTextField!
    @IBOutlet weak var message: NSTextField!
    @IBOutlet weak var port: NSTextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    
    }

    @IBAction func sendUDP(sender: AnyObject) {
        let mySocket = GCDAsyncUdpSocket()
        let cleanPort:UInt16! = UInt16(port.stringValue)
        
        mySocket.setIPv4Enabled(true)
        
            mySocket.sendData(message.stringValue.dataUsingEncoding(NSUTF8StringEncoding), toHost: ipaddy.stringValue , port: cleanPort, withTimeout: 4, tag: 0)
        
            mySocket.closeAfterSending()
    }
        



}

