//
//  PesonalSetViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit

final class PesonalSetViewController: UIViewController {
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = """
                    웨더앱 개인정보처리방침
                    
                    웨더앱(이하 ‘웨더’)는 서비스 기획부터 종료까지 개인정보보호법 등 국내의 개인정보 보호 법령을 철저히 준수합니다. 또한 OECD의 개인정보 보호 가이드라인 등 국제 기준을 준수하여 서비스를 제공합니다.

                    본 개인정보처리방침의 목차는 아래와 같습니다.
                    관계법령이 요구하는 개인정보처리방침의 필수 사항과 웨더 자체적으로 이용자 개인정보 보호에 있어 중요하게 판단하는 내용을 포함하였습니다.

                    1.개인정보처리방침의 의의
                    2.수집하는 개인정보 (필수 안내사항)
                    3.수집한 개인정보의 이용 (필수 안내사항)
                    4.개인정보의 제공 및 위탁 (필수 안내사항)
                    5.개인정보의 파기 (필수 안내사항)
                    6.이용자 및 법정대리인의 권리와 행사 방법 (필수 안내사항)
                    7.개인정보보호를 위한 네이버의 노력 (필수 안내사항)
                    8.개인정보 보호책임자 및 담당자 안내 (필수 안내사항)
                    9.개인위치정보의 처리 (필수 안내사항)
                    10.본 개인정보처리방침의 적용 범위
                    11.개정 전 고지 의무
                    """
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    // MARK: - UI 셋팅
    func makeUI() {
        
        view.backgroundColor = .systemGray6
        title = "개인정보 보호"
        view.addSubview(detailLabel)
        
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        detailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
        detailLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
    }
    
    // MARK: - 네비게이션바 버튼 설정
    @objc func backBotton() {
        self.navigationController?.popViewController(animated: true)
    }
}
