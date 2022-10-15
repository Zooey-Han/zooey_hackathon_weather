//
//  FirstViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit

final class FirstViewController: UIViewController {
    
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
        
        // 백버튼 커스텀
        let backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
            self.navigationItem.backBarButtonItem = backBarButtonItem
        
        // 버튼
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addWeatherTapped))
                
        let line = UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal"), style:.plain, target: self, action: #selector(lineWeatherTapped))
        
        // 버튼 한줄로 묶어줌
        navigationItem.rightBarButtonItems = [line, add]
    }
    
    // MARK: - 네비게이션바 버튼 설정
    @objc func addWeatherTapped() {
            print("addWeatherTapped")
        // 화면 전환
        let vc = SelectWeatherViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        //전화면으로 돌아가는 버튼
        //self.navigationController?.popViewController(animated: true)
    }
    @objc func lineWeatherTapped() {
            print("lineWeatherTapped")
        let vc = SettingPersonalViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        //self.navigationController?.popViewController(animated: true)
    }
    
}
