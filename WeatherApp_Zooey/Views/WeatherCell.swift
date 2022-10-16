//
//  WeatherCell.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/16.
//

import UIKit

class WeatherCell: UICollectionViewCell {
    
    static let id = "WeatherCell"
    
    var weather: Weather? {
        didSet {
            guard let weather = weather else { return }
            locationName.text = weather.locationName
            weatherText.text = weather.weatherTxt
            weahterIcon.image = weather.weatherIcon
            temIcon.image = weather.temIcon
            temText.text = weather.temperature
            humidyIcon.image = weather.humidityIcon
            humidyText.text = weather.humidity
            highIcon.image = weather.highIcon
            highTemText.text = weather.highTem
            lowIcon.image = weather.lowIcon
            lowTemText.text = weather.lowTem
            weatherDetail.text = weather.detail
        }
    }
    
    // MARK: - 기본 보여질 화면들
    // 지역
    let locationName: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // 날씨
    let weatherText: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // 날씨 아이콘
    let weahterIcon: UIImageView = {
       let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    // 온도 아이콘
    let temIcon: UIImageView = {
       let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    // 온도
    let temText: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // 습도아이콘
    let humidyIcon: UIImageView = {
       let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    // 습도
    let humidyText: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // 최고기온 아이콘
    let highIcon: UIImageView = {
       let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    // 최고온도
    let highTemText: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // 최저기온 아이콘
    let lowIcon: UIImageView = {
       let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    // 최저기온
    let lowTemText: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // 날씨 디테일
    let weatherDetail: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // 스택뷰
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution = .fillEqually
        sv.alignment = .fill
        sv.spacing = 5
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()

    let stackView2: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal //수평
        sv.distribution = .fill
        sv.alignment = .fill
        sv.spacing = 5
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()

    let stackView3: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal //수평
        sv.distribution = .fill
        sv.alignment = .fill
        sv.spacing = 5
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let stackView4: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal //수평
        sv.distribution = .fill
        sv.alignment = .fill
        sv.spacing = 5
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let stackView5: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal //수평
        sv.distribution = .fill
        sv.alignment = .fill
        sv.spacing = 5
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let stackView6: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal //수평
        sv.distribution = .fillEqually
        sv.alignment = .fill
        sv.spacing = 20
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let stackView7: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal //수평
        sv.distribution = .fillEqually
        sv.alignment = .fill
        sv.spacing = 20
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - 화면에 보여지는 순서
    func setupSackView() {
        self.addSubview(stackView)
        stackView.addArrangedSubview(locationName)
        stackView.addArrangedSubview(weatherText)
        self.addSubview(weahterIcon)
        self.addSubview(stackView2)
        stackView2.addArrangedSubview(temIcon)
        stackView2.addArrangedSubview(temText)
        self.addSubview(stackView3)
        stackView3.addArrangedSubview(humidyIcon)
        stackView3.addArrangedSubview(humidyText)
        self.addSubview(stackView4)
        stackView4.addArrangedSubview(highIcon)
        stackView4.addArrangedSubview(highTemText)
        self.addSubview(stackView5)
        stackView5.addArrangedSubview(lowIcon)
        stackView5.addArrangedSubview(lowTemText)
        self.addSubview(stackView6)
        stackView6.addArrangedSubview(stackView2)
        stackView6.addArrangedSubview(stackView3)
        self.addSubview(stackView7)
        stackView7.addArrangedSubview(stackView4)
        stackView7.addArrangedSubview(stackView5)
        self.addSubview(weatherDetail)
    }
    
    // MARK: - 오토레이아웃
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            weahterIcon.heightAnchor.constraint(equalToConstant: 250),
            weahterIcon.widthAnchor.constraint(equalToConstant: 250),
            weahterIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            weahterIcon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            weahterIcon.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 40)
        ])
        
        NSLayoutConstraint.activate([
            temIcon.heightAnchor.constraint(equalToConstant: 30),
            temIcon.widthAnchor.constraint(equalToConstant: 30),
            temIcon.topAnchor.constraint(equalTo: stackView2.topAnchor, constant: 0),
            //temIcon.leadingAnchor.constraint(equalTo: stackView2.leadingAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            humidyIcon.heightAnchor.constraint(equalToConstant: 30),
            humidyIcon.widthAnchor.constraint(equalToConstant: 30),
            humidyIcon.topAnchor.constraint(equalTo: stackView3.topAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            highIcon.heightAnchor.constraint(equalToConstant: 30),
            highIcon.widthAnchor.constraint(equalToConstant: 30),
            highIcon.topAnchor.constraint(equalTo: stackView4.topAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            lowIcon.heightAnchor.constraint(equalToConstant: 30),
            lowIcon.widthAnchor.constraint(equalToConstant: 30),
            lowIcon.topAnchor.constraint(equalTo: stackView5.topAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            stackView2.heightAnchor.constraint(equalToConstant: 30),
            stackView2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            //stackView2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            stackView2.topAnchor.constraint(equalTo: weahterIcon.bottomAnchor, constant: 70)
        ])
        
        NSLayoutConstraint.activate([
            stackView3.heightAnchor.constraint(equalToConstant: 30),
            //stackView3.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            stackView3.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView3.topAnchor.constraint(equalTo: weahterIcon.bottomAnchor, constant: 70)
        ])
        
        NSLayoutConstraint.activate([
            stackView4.heightAnchor.constraint(equalToConstant: 30),
            stackView4.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            //stackView4.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            stackView4.topAnchor.constraint(equalTo: stackView2.bottomAnchor, constant: 15)
        ])
        
        NSLayoutConstraint.activate([
            stackView5.heightAnchor.constraint(equalToConstant: 30),
            //stackView5.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            stackView5.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView5.topAnchor.constraint(equalTo: stackView2.bottomAnchor, constant: 15)
        ])
        
        NSLayoutConstraint.activate([
            stackView6.heightAnchor.constraint(equalToConstant: 30),
            stackView6.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            stackView6.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            stackView6.topAnchor.constraint(equalTo: weahterIcon.bottomAnchor, constant: 70)
        ])
        
        NSLayoutConstraint.activate([
            stackView7.heightAnchor.constraint(equalToConstant: 30),
            stackView7.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            stackView7.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            stackView7.topAnchor.constraint(equalTo: stackView6.bottomAnchor, constant: 15)
        ])
        
        
        NSLayoutConstraint.activate([
            weatherDetail.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            weatherDetail.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            weatherDetail.topAnchor.constraint(equalTo: stackView7.bottomAnchor, constant: 40)
        ])
    }
}
