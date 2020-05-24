//
//  Colors.swift
//  question 27
//
//  Created by Nikoghosyan Gevorg on 5/24/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import UIKit
struct Colors: Codable, Equatable {
   
    
    var blue : Float
    var red : Float
    var green : Float
    
    mutating func getRandomColors () -> UIColor {
   
        let color = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
           return color
    }
    
}
