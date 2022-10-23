//
//  SelectCell.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/16.
//

import UIKit

class SelectCell: UITableViewCell {
    
    // MARK: - 리스트 컬렉션셀 구현
    
    var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupSackView()
        selectionStyle = .none
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        containerView.layer.cornerRadius = 16
        containerView.layer.applySketchShadow()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 화면에 보여지는 순서
    func setupSackView() {
        //self.addSubview(containerView)
        self.addSubview(stackView)
        stackView.addArrangedSubview(containerView)
        stackView.addArrangedSubview(weahterIcon)
        stackView.addArrangedSubview(locationName)
    }
    
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    
    // MARK: - 오토레이아웃
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
        ])
        
        NSLayoutConstraint.activate([
            
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            weahterIcon.heightAnchor.constraint(equalToConstant: 50),
            weahterIcon.widthAnchor.constraint(equalToConstant: 60),
            weahterIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            weahterIcon.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            weahterIcon.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30)
        ])
    }
}

extension CALayer {
    func applySketchShadow(
        color: UIColor = .black,
        alpha: Float = 0.1,
        x: CGFloat = 0,
        y: CGFloat = 2,
        blur: CGFloat = 8,
        spread: CGFloat = 0)
    {
        masksToBounds = false
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        backgroundColor = #colorLiteral(red: 0.7882352941, green: 0.8524353391, blue: 1, alpha: 1) // 셀 색상이 변함
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}
