//
//  NewView.swift
//  IOS Learning
//
//  Created by Naveen kUSHWAHA on 02/11/23.
//  Copyright © 2023 Naveen kUSHWAHA. All rights reserved.
//

import UIKit

class NewView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}


extension NewView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
