//
//  InitialVarController.swift
//  Login Form
//
//  Created by Steven Kirke on 30.08.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class InitialVarController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = "Welcome, \(text!)!"
    }
}
