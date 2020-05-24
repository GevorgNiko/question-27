//
//  TrackCell.swift
//  Itunes Question
//
//  Created by Nikoghosyan Gevorg on 5/24/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import UIKit

class TrackCell: UICollectionViewCell {
    private var imageLoadedObserver: Any?
      private var url: URL?
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
           super.awakeFromNib()
           imageLoadedObserver = NotificationCenter.default.addObserver(forName: ImageCache.Notification.name, object: nil, queue: .main, using: imageLoaded(_:))
       }
    func setUp(with track: Track) {
    cellImage.image = ImageCache.shared.image(for: track.artworkURL)
    }
    
    private func imageLoaded(_ notification: Notification) {
          guard let userInfo = notification.userInfo,
              let imageUrl = userInfo[ImageCache.Notification.url] as? URL, url == imageUrl else { return }
          cellImage.image = userInfo[ImageCache.Notification.image] as? UIImage
      }
}
