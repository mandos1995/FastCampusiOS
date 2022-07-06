//
//  FocusCell.swift
//  HeadSpaceForcus
//
//  Created by 김민석 on 2022/07/04.
//

import UIKit

class FocusCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = .systemIndigo
        contentView.layer.cornerRadius = 10
    }
    
    func configure(_ item: Focus) {
        titleLabel.text = item.title
        descriptionLabel.text = item.description
        thumnailImageView.image = UIImage(systemName: item.imageName)?.withRenderingMode(.alwaysOriginal)
    }
}
