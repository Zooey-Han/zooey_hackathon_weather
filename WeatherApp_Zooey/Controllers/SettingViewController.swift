//
//  SettingViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/08.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDataSource {
   
    var settingArray: [Setting] = [
        Setting(settingImage: UIImage(systemName: "chevron.right"), settingLabel: "현재 위치"),
        Setting(settingImage: UIImage(systemName: "chevron.right"), settingLabel: "문의하기"),
        Setting(settingImage: UIImage(systemName: "chevron.right"), settingLabel: "개인정보 처리방침"),
        Setting(settingImage: UIImage(systemName: "chevron.right"), settingLabel: "개발자 정보"),
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 60
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as! SettingCell
        
        cell.settingImage.image = settingArray[indexPath.row].settingImage
        cell.settingLabel.text = settingArray[indexPath.row].settingLabel
        
        return cell
    }
   

}
