//
//  ViewController.swift
//  Music
//
//  Created by David Jackson on 3/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DefaultAPI.musicGet { (items, error) in
            items?.forEach({ (item) in
                print(item._description)
            })
        }
    }
}

