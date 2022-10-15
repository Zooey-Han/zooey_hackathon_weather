//
//  AnswerSetViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit

final class AnswerSetViewController: UIViewController {
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = """
                    문의사항이 있으시면 언제든지 아래 e-mail로 연락주세요.
                    
                    e-mail@email.com
                    """
        label.font = UIFont.systemFont(ofSize: 16)
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
        title = "문의하기"
        view.addSubview(detailLabel)
        
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        detailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 15).isActive = true
        detailLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
    }
    
    // MARK: - 네비게이션바 버튼 설정
    @objc func backBotton() {
        self.navigationController?.popViewController(animated: true)
    }
}

