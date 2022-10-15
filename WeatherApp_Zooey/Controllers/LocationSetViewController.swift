//
//  LocationSetViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit

final class LocationSetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray6
        title = "위치 사용"
    }
    
    // MARK: - 네비게이션바 버튼 설정
    @objc func backBotton() {
        self.navigationController?.popViewController(animated: true)
    }
}
