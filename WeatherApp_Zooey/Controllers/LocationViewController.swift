//
//  LocationViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/08.
//

import UIKit
import CoreLocation

// 설정에서 위치서비스 이용
class LocationViewController: UIViewController {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    var locationManager = CLLocationManager()
    
    @IBOutlet weak var selectButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        locationLabel.layer.cornerRadius = 10
        locationLabel.layer.masksToBounds = true
        selectButton.layer.cornerRadius = 10
        settingSwitch.addTarget(self, action: #selector(settingSwitch(_:)), for: .valueChanged)
    }
    // 토글
    @IBAction func settingSwitch(_ sender: UISwitch) {
        if settingSwitch.isOn {
            setup()
            settingSwitch.setOn(true, animated: true)
        } else {
            settingSwitch.setOn(false, animated: true)
        }
    }
    
    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

// 위치사용 허용 알림창
extension LocationViewController : CLLocationManagerDelegate {
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


