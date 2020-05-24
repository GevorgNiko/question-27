//
//  SavingData.swift
//  question 27
//
//  Created by Nikoghosyan Gevorg on 5/24/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import Foundation
class SavingData {
 
        
        private let colorsUrl: URL
        static let shared = SavingData()
        
        init() {
            let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
            colorsUrl = documentsDirectory.appendingPathComponent("colors").appendingPathExtension("plist")
        }
        
        func read() -> [Colors] {
            let propertyListDecoder = PropertyListDecoder()
            if let retrieveColorsData = try? Data(contentsOf: colorsUrl),
                let decodeColors = try? propertyListDecoder.decode(Array<Colors>.self, from:
                    retrieveColorsData) {
                return decodeColors
            }
            return []
        }
        
        func write(_ colors: [Colors]) {
            let propertyListEncoder = PropertyListEncoder()
            let encodedColors = try? propertyListEncoder.encode(colors)
            try? encodedColors?.write(to: colorsUrl, options: .noFileProtection)
        }
    }


