//
//  Track.swift
//  Itunes Question
//
//  Created by Nikoghosyan Gevorg on 5/24/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import UIKit
struct Track: Codable {
    let artistName: String
    let trackName: String
    let collectionName: String
    let previewUrl: URL
    
    private let artworkUrl30: URL
    var artworkURL: URL {
        let urlString = artworkUrl30.absoluteString.replacingOccurrences(of: "30x30",
                                                                         with: "250x250")
        return URL(string: urlString)!
        // AVAudioPlayer
    }
}
