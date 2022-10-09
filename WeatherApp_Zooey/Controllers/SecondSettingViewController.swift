//
//  SecondSettingViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/09.
//

import UIKit

class SecondSettingViewController: UIViewController {
    
    
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var contentsLabel: UILabel!
    var settingData: DataSetting?
    
    var settingDataArray: [DataSetting] = []
    
    func makeData() {
        settingDataArray = [
            DataSetting(titleLabel: "문의하기", detailLabel: "문의하기입니다."),
            DataSetting(titleLabel: "개인정보처리방침", detailLabel: "개인정보처리방침입니다."),
            DataSetting(titleLabel: "개발자정보", detailLabel: "개발자정보입니다.")
        ]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        subjectLabel.text = settingData?.titleLabel
        contentsLabel.text = settingData?.detailLabel
        
        
    }
    func getData() -> [DataSetting] {
        return settingDataArray
    }
    
    
}




