//
//  HeaderView.swift
//  TestProject
//
//  Created by Chris Kreager on 04.07.18.
//  Copyright © 2018 Chris Kreager. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    var parentController : UIViewController!
    
    @IBOutlet weak var titleLabel : UILabel!
    
    func initView( pController : UIViewController, title : String) {
        parentController = pController
        titleLabel.text = title
    }
    
    @IBAction func onClickBack(sender: UIButton) {
        parentController.navigationController?.popViewController(animated:true);
    }
}
