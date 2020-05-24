//
//  NetWork.swift
//  Itunes Question
//
//  Created by Nikoghosyan Gevorg on 5/24/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import UIKit
class Network {
    static var shared = Network()
    var url = "https://itunes.apple.com/search?media=music&entity=song&term=Linkin"
    
    func requestMusicList(url: URL?, completion: @escaping ([Track]?) -> Void) {
           if let url = url {
               let task = URLSession.shared.dataTask(with: url) { data, response, error in
                   let decoder = JSONDecoder()
                   if let data = data, let result = try? decoder.decode(Result.self, from: data) {
                       completion(result.results)
                   } else {
                       completion(nil)
                   }
               }
               task.resume()
           } else {
               completion(nil)
           }
       }
    
    
    func requestImage(for url: URL, completion: @escaping (UIImage?) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data, let image = UIImage(data: data) {
                completion(image)
            } else {
                completion(nil)
            }
        }
        task.resume()
    }
    
    
}
struct Result: Codable {
    let resultCount: Int
    let results: [Track]
}

