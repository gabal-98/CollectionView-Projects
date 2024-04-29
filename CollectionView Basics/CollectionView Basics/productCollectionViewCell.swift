//
//  productCollectionViewCell.swift
//  CollectionView Basics
//
//  Created by robusta on 29/04/2024.
//

import UIKit

class productCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var priceLabel: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(photo: UIImage , price: Int) {
        imgView.image = photo
        priceLabel.text = "\(price)"
    }
}
