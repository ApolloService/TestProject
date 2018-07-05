//
//  ListView.swift
//  TestProject
//
//  Created by Chris Kreager on 04.07.18.
//  Copyright © 2018 Chris Kreager. All rights reserved.
//

import UIKit

class ListView: UIView, UITableViewDataSource {
    
    
    @IBOutlet weak var headerView : HeaderView!
    @IBOutlet  weak var raceTableView : UITableView!
    var parentController : UIViewController!
    
    func initialiseView(pController : UIViewController) {
        parentController = pController;
        headerView.initView(pController: parentController, title: "Races")
        raceTableView.rowHeight = raceTableView.frame.height / 3
        raceTableView.estimatedRowHeight = raceTableView.frame.height / 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_race", for: indexPath)
        
        return cell
    }
    
    
}
