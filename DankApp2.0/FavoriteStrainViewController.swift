//
//  FavoriteStrainViewController.swift
//  DankApp2.0
//
//  Created by Rosa Rico Mendoza on 12/15/19.
//  Copyright © 2019 Cynthia Rico Mendoza. All rights reserved.
//


import UIKit

class FavoriteStrainViewController: UIViewController {
    @IBOutlet weak var StrainName: UILabel!
    @IBOutlet weak var StrainType: UILabel!
    @IBOutlet weak var StrainDescription: UILabel!
    
    var name: String = ""
    var type: String = ""
    var descr: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StrainName?.text = name
        StrainType?.text = type
        StrainDescription?.text = descr
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
