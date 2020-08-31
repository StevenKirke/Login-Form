//
//  InfoTableController.swift
//  Login Form
//
//  Created by Steven Kirke on 31.08.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class InfoTableController: UITableViewController {
    
    let learning = Education()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = "2"

        return cell
    }
}
