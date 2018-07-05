//
//  MapController.swift
//  TestProject
//
//  Created by Chris Kreager on 04.07.18.
//  Copyright © 2018 Chris Kreager. All rights reserved.
//

import UIKit

class MapController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let mapView : MapView = self.view as! MapView
        mapView.initialiseView(pController: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
}
