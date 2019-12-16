//
//  PotFilesViewController.swift
//  DankApp2.0
//
//  Created by Rosa Rico Mendoza on 12/15/19.
//  Copyright © 2019 Cynthia Rico Mendoza. All rights reserved.
//

import UIKit

class PotFilesViewController: UIViewController {
    @IBOutlet weak var btnFirstPotfile: UIButton!
    
    @IBOutlet weak var btnSecondPotfile: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.applyRoundCorner(btnFirstPotfile)
        self.applyRoundCorner(btnSecondPotfile)
    }
    
    func applyRoundCorner(_ object:AnyObject){
        
        object.layer.cornerRadius = object.frame.size.width / 2.5
        object.layer.masksToBounds = true
    }
    
}
