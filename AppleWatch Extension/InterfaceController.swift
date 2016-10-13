//
//  InterfaceController.swift
//  AppleWatch Extension
//
//  Created by Jonathan Bijos on 10/5/16.
//  Copyright © 2016 putfiredev. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var object = [String: String]()
    @IBOutlet var message: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
        object["message"] = ""
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func buttonClicked() {
        pushController(withName: "InterfaceController2", context: object)
    }
    @IBAction func setText() {
        presentTextInputController(withSuggestions: ["Teste", "ALOU"], allowedInputMode: .plain) { obj in
            if let result = obj {
                let msg: String = (result as! [String]).map { $0 }.joined(separator: " ")
                self.message.setText(msg)
                self.object["message"] = msg
            }
        }
    }
    @IBAction func menuItemAdd() {
        guard let msg = object["message"] else {
            return
        }
        message.setText("\(msg) - Add!")
    }
    
    @IBAction func menuItemRemove() {
        message.setText("")
    }
    
}
