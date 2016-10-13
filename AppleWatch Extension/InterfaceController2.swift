//
//  InterfaceController2.swift
//  TesteWatchApp
//
//  Created by Jonathan Bijos on 10/5/16.
//  Copyright © 2016 putfiredev. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController2: WKInterfaceController {

    @IBOutlet var label: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let object = context {
            let msg = object as! [String: String]
            label.setText(msg["message"])
        } else {
            label.setText("Informe algum dado!")
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
