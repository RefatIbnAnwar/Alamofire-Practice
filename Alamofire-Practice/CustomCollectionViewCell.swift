//
//  CustomCollectionViewCell.swift
//  Alamofire-Practice
//
//  Created by MySoftheaven BD on 27/3/18.
//  Copyright © 2018 MySoftheaven BD. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        imageView.layer.cornerRadius = imageView.bounds.size.width / 2
        imageView.layer.borderWidth = 2.0
        imageView.layer.borderColor = UIColor.cyan.cgColor
        imageView.clipsToBounds = true
    }
    
    
}
