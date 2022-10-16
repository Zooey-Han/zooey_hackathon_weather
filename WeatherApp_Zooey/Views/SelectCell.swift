//
//  SelectCell.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/16.
//

import UIKit

class SelectCell: UICollectionViewCell {
    // MARK: - 리스트 컬렉션셀 구현
    let locationName: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let weahterIcon: UIImageView = {
       let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.alignment = .fill
        sv.spacing = 0
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSackView()
        self.backgroundColor = #colorLiteral(red: 0.8793388009, green: 0.7789234519, blue: 1, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 화면에 보여지는 순서
    func setupSackView() {
        self.addSubview(stackView)
        stackView.addArrangedSubview(weahterIcon)
        stackView.addArrangedSubview(locationName)
    }
    
    // MARK: - 오토레이아웃
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            weahterIcon.heightAnchor.constraint(equalToConstant: 60),
            weahterIcon.widthAnchor.constraint(equalToConstant: 60),
            weahterIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//            weahterIcon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
//            weahterIcon.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 40)
        ])
    }
}
