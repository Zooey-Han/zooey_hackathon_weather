//
//  DetailCollectionViewCell.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/10.
//

import UIKit

// 날씨 셀
class DetailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var weatherTxt: UILabel!
    @IBOutlet weak var tem: UILabel!
    @IBOutlet weak var per: UILabel!
    @IBOutlet weak var hightem: UILabel!
    @IBOutlet weak var lowtem: UILabel!
    @IBOutlet weak var detailTxt: UILabel!
    
    func configure(_ message: CellMessage) {
        name.text = message.locationName
        icon.image = UIImage(named: message.weatherIcon)
        weatherTxt.text = message.weatherTxt
        tem.text = message.temperature
        per.text = message.humidity
        hightem.text = message.highTem
        lowtem.text = message.lowTem
        detailTxt.text = message.detail
        
    }
}


