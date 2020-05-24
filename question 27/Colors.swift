//
//  Colors.swift
//  question 27
//
//  Created by Nikoghosyan Gevorg on 5/24/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import UIKit
struct Colors: Codable {
    var blue : Float?
    var red : Float?
    var green : Float?
    
    mutating func getRandomColors () -> UIColor {
    red = Float.random(in: 0...1)
           green =  Float.random(in: 0...1)
           blue  = Float.random(in: 0...1)
        let color = UIColor(red: CGFloat(red!), green: CGFloat(green!), blue: CGFloat(blue!), alpha: 1)
           return color
    }
    
}
