//
//  BannerCell.swift
//  SpotifyPaywall
//
//  Created by 김민석 on 2022/07/04.
//

import UIKit

class BannerCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configure(_ info: BannerInfo) {
        titleLabel.text = info.title
        descriptionLabel.text = info.description
        thumbnailImageView.image = UIImage(named: info.imageName)
    }
}
