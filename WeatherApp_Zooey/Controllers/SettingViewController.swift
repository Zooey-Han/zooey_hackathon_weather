//
//  SettingViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/08.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDataSource {
    
    // 테이블 뷰에 담아줄 배열
    var settingArray: [Setting] = [
        Setting(settingImage: UIImage(systemName: "chevron.right"), settingLabel: "현재 위치"),
        Setting(settingImage: UIImage(systemName: "chevron.right"), settingLabel: "문의하기"),
        Setting(settingImage: UIImage(systemName: "chevron.right"), settingLabel: "개인정보 처리방침"),
        Setting(settingImage: UIImage(systemName: "chevron.right"), settingLabel: "개발자 정보")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 60
        tableView.delegate = self
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

extension SettingViewController: UITableViewDelegate {
    // 셀 선택시 다음 화면으로 넘어가기
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let locationVC = storyboard?.instantiateViewController(withIdentifier: "LocationViewController") as! LocationViewController
            locationVC.modalPresentationStyle = .fullScreen
            present(locationVC, animated: true)
        }
        if indexPath.row == 1 {
            let locationVC = storyboard?.instantiateViewController(withIdentifier: "AnswerViewController") as! AnswerViewController
            locationVC.modalPresentationStyle = .fullScreen
            present(locationVC, animated: true)
        }
        if indexPath.row == 2 {
            let locationVC = storyboard?.instantiateViewController(withIdentifier: "PrivacyViewController") as! PrivacyViewController
            locationVC.modalPresentationStyle = .fullScreen
            present(locationVC, animated: true)
        }
        if indexPath.row == 3 {
            let locationVC = storyboard?.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
            locationVC.modalPresentationStyle = .fullScreen
            present(locationVC, animated: true)
        }
        
        // 되돌아 갈때 셀 색상 해제
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
