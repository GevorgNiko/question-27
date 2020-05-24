//
//  ViewController.swift
//  question 27
//
//  Created by Nikoghosyan Gevorg on 5/24/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outletButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func changePressed(_ sender: UIButton) {
        var Color = Colors()
    sender.backgroundColor = Color.getRandomColors()
    }
    
    
    
  
}

