//
//  SettingCell.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/09.
//

import UIKit

class SettingCell: UITableViewCell {

    
    @IBOutlet weak var settingImage: UIImageView!
    
    @IBOutlet weak var settingLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
