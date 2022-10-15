//
//  LocationSetViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit
import CoreLocation

final class LocationSetViewController: UIViewController {
    
    var locationManager = CLLocationManager()
 
    // MARK: - view, label, switch 스택만들기
    private lazy var uiView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        view.addSubview(locationLabel)
        view.addSubview(toggledswitch)
        return view
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "위치 사용"
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let toggledswitch: UISwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupUI()
        makeUI()
    }
    
    func setupUI() {
        view.backgroundColor = .systemGray6
        title = "위치 사용"
        locationLabel.layer.cornerRadius = 10
        locationLabel.layer.masksToBounds = true
        toggledswitch.addTarget(self, action: #selector(toggleBotton), for: .valueChanged)
    }
    
    // MARK: - 위치 잡기
    func makeUI() {
        view.addSubview(uiView)
        uiView.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(toggledswitch)
        toggledswitch.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // UI뷰
            uiView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            uiView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            uiView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            uiView.heightAnchor.constraint(equalToConstant: 60),
            
            // label
            locationLabel.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 10),
            locationLabel.trailingAnchor.constraint(equalTo: uiView.trailingAnchor, constant: 10),
            locationLabel.topAnchor.constraint(equalTo: uiView.topAnchor, constant: 2),
            locationLabel.bottomAnchor.constraint(equalTo: uiView.bottomAnchor, constant: 2),
            
            // 토글
            toggledswitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            toggledswitch.topAnchor.constraint(equalTo: view.topAnchor, constant: 115)
        ])
        
    }
    
    // MARK: - 토글 버튼 설정
    @objc func toggleBotton() {
        if self.toggledswitch.isOn {
            self.toggledswitch.setOn(false, animated: true)
            let alert = UIAlertController(title: "위치 사용", message: "위치사용을 허용하시겠습니까?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "거부", style: .cancel, handler: { _ in
                
            }))
            
            alert.addAction(UIAlertAction(title: "허용", style: .default, handler: { [self] _ in
                self.toggledswitch.setOn(true, animated: true)
                setup()
            }))
            
            self.present(alert, animated: true, completion: nil)
        } else {
            self.toggledswitch.setOn(true, animated: true)
            let alert2 = UIAlertController(title: "위치 사용 해제", message: "위치 사용 해제를 위해 설정창으로 이동하시겠습니까?", preferredStyle: .alert)
            alert2.addAction(UIAlertAction(title: "거부", style: .cancel, handler: { _ in
            }))
            alert2.addAction(UIAlertAction(title: "허용", style: .default, handler: { _ in
                self.toggledswitch.setOn(false, animated: true)
                guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url) {
                        success in print(success)
                    }
                }
            }))
            self.present(alert2, animated: true, completion: nil)
        }
    }
    
    
    // MARK: - 네비게이션바 버튼 설정
    @objc func backBotton() {
        self.navigationController?.popViewController(animated: true)
    }
}


// MARK: - 위치사용 허용 알림창
extension LocationSetViewController : CLLocationManagerDelegate {
    func setup() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // 정확한 위치받기
        locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus){
        switch status {
        case .restricted, .notDetermined:
            print("사용자: 위치 사용 여부 체크중")
        case .authorizedAlways, .authorizedWhenInUse:
            print("사용자: 위치 허용")
            self.locationManager.startUpdatingLocation()
        case .denied:
            print("사용자: 위치 사용 거부")
            let alert = UIAlertController(title: "위치 사용 거부", message: "위치 설정은 설정창을 통해서 가능합니다.", preferredStyle: UIAlertController.Style.alert)
            let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(action)
            self.present(alert, animated: true)
        default:
            print("GPS: default")
        }
    }
    
}


