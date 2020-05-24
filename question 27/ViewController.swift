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
     let Color = getRandomColor()
        sender.backgroundColor = Color
    }
    
    
    
    private func getRandomColor () ->UIColor {
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let color = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
        return color
    }
}

