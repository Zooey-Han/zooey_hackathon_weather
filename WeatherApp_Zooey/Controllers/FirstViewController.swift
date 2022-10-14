//
//  FirstViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 배경 및 보여질 화면 설정
        let vc = ViewController()
        view.backgroundColor = #colorLiteral(red: 0.7882352941, green: 0.8524353391, blue: 1, alpha: 1)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
        
        setupNaviBar()
    }
    
    // MARK: - 네비게이션바 설정
    func setupNaviBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .clear
        appearance.shadowColor = .clear
        
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        // 버튼
        var add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addWeatherTapped))
                
        var line = UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal"), style:.plain, target: self, action: #selector(lineWeatherTapped))

        navigationItem.rightBarButtonItems = [line, add]
    }
    
    // MARK: - 네비게이션바 버튼 실행
    @objc func addWeatherTapped() {
            print("addWeatherTapped")
    }
    @objc func lineWeatherTapped() {
            print("lineWeatherTapped")
    }
    
}
