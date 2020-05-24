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
         var colors: [Colors] = SavingData.shared.read()
        var Color = Colors(blue: Float.random(in: 0...1), red:
            Float.random(in: 0...1), green: Float.random(in: 0...1))
        var actualColor = Color.getRandomColors()
         
        if colors.contains(where: { (color) -> Bool in
           Color == color
        }) {
            actualColor = Color.getRandomColors()       }
        else {
            sender.backgroundColor = actualColor
            colors.append(Color)
             SavingData.shared.write(colors)
          
        }
   print(colors)
       
    }
    
    
    
  
}

