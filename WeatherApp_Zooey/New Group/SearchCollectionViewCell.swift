//
//  SearchCollectionViewCell.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/11.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var nameLoc: UILabel!
    
    // 클릭할때마다 컬렉션 셀 배경 색상 변경
    var clickCount: Int = 0 {
        didSet {
            if clickCount == 1 {
                nameView.backgroundColor = UIColor.gray
                print("\(clickCount)")
            } else {
                nameView.backgroundColor = #colorLiteral(red: 0.7882352941, green: 0.8509803922, blue: 1, alpha: 1)
                print("\(clickCount)")
            }
        }
    }
    
    func configure(_ message: CellMessage) {
        nameLoc.text = message.locationName
    }
}
