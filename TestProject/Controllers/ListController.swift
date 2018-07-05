//
//  ListController.swift
//  TestProject
//
//  Created by Chris Kreager on 04.07.18.
//  Copyright © 2018 Chris Kreager. All rights reserved.
//

import UIKit

class ListController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let listView : ListView = self.view as! ListView
        listView.initialiseView(pController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
}
