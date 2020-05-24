//
//  ViewController.swift
//  Itunes Question
//
//  Created by Nikoghosyan Gevorg on 5/24/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tracks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? TrackCell {
            cell.setUp(with: tracks[indexPath.row])
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    
 
    @IBOutlet weak var collection: UICollectionView!
    private var tracks = [Track]() {
           didSet {
            collection.reloadData()
            print(tracks.count)
           }
       }

    override func viewDidLoad() {
        super.viewDidLoad()
        Network.shared.requestMusicList(url: URL(string: "https://itunes.apple.com/search?term=Linkin")) { [weak self] tracks in
                   guard let tracks = tracks else { return }
                   DispatchQueue.main.async {
                       self?.tracks = tracks
                   }
               }
           }
        // Do any additional setup after loading the view.
    
    
    
    
    
    }




