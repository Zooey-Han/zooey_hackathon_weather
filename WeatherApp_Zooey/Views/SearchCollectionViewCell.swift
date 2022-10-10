//
//  SearchCollectionViewCell.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/11.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLoc: UILabel!
    
    override var isHighlighted: Bool {
        didSet {
            nameLoc.isHidden = !isHighlighted
        }
    }
    
    func configure(_ message: CellMessage) {
        nameLoc.text = message.locationName
    }
}
