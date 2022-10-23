//
//  FirstViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit

final class WeatherViewController: UIViewController {
    
    private let weatherView = WeatherView()
    var weather: Weather?
   
    override func loadView() {
        view = weatherView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
        setupWeatherData()
    }
    
    // MARK: - UI셋팅
    func makeUI() {
        // 배경 및 보여질 화면 설정
        view.backgroundColor = #colorLiteral(red: 0.7882352941, green: 0.8524353391, blue: 1, alpha: 1)
    }
    
    // MARK: - Data 불러오기
    func setupWeatherData() {
        weatherView.weather = weather
    }
    
    // MARK: - 네비게이션바 버튼 설정
    @objc func backBottonTapped() {
        self.navigationController?.popViewController(animated: true)
        //dismiss(animated: true)
    }
}
