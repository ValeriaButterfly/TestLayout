//
//  CustomEventTableViewCell.swift
//  TestLayout
//
//  Created by Valeria Muldt on 21/12/2019.
//  Copyright © 2019 Valeria Muldt. All rights reserved.
//

import UIKit

class CustomEventTableViewCell: UITableViewCell {
    
    @IBOutlet weak var creatorImage: UIImageView! {
        didSet {
            creatorImage.layer.cornerRadius = creatorImage.frame.size.height / 2
            creatorImage.clipsToBounds = true
            creatorImage.layer.borderWidth = 2
            creatorImage.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBOutlet weak var creatorName: UILabel! {
        didSet {
            creatorName.textColor = UIColor.white
        }
    }
    //@IBOutlet weak var addToFavoriteButton: UIButton!
    
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventTime: UILabel!
    @IBOutlet weak var eventTitleName: UILabel!
    @IBOutlet weak var eventPlace: UILabel!
    
}
