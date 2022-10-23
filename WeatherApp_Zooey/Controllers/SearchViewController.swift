//
//  SearchViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/23.
//

import UIKit

class SearchViewController: UIViewController {
    
    weak var delegate: WeatherDelegate?
    
    var weather: Weather?

    // MARK: - 검색필드
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "지금 날씨가 궁금한 곳은?"
        textField.addTarget(self, action: #selector(searchRecords(_ :)), for: .editingChanged)
        textField.backgroundColor = .systemGray6
        return textField
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.contentInset = .init(top: 20, left: 0, bottom: 20, right: 0)
        tableView.separatorStyle = .none
        return tableView
    }()
    
    var locations:[String] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.largeTitleDisplayMode = .never
    }
    
    func setupUI() {
        title = "지역 검색"
        view.backgroundColor = .white
        [textField, tableView].forEach(view.addSubview)
        textField.borderStyle = .roundedRect
        //textField.layer.applySketchShadow()
        textField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        textField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 20).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -20).isActive = true
        
        tableView.topAnchor.constraint(equalTo: textField.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -20).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 20).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        view.bringSubviewToFront(textField)
    }
    
    func setupData() {
        locations = Location.allLocations
        tableView.dataSource = self
        tableView.delegate = self
        textField.delegate = self
        WeatherView().weather = weather
    }
    
    
    // MARK: - 지역선택시 데이터 넘겨주기
    @objc func sendDataAndPop(location: String){
        delegate?.update(weather: location)
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func searchRecords(_ textField: UITextField) {
        locations.removeAll()
        if textField.text?.count != 0 {
            for location in Location.allLocations {
                if let locationToSearch = textField.text{
                    let range = location.lowercased().range(of: locationToSearch, options: .caseInsensitive, range: nil, locale: nil)
                    if range != nil {
                        locations.append(location)
                    }
                }
            }
        } else {
            for location in Location.allLocations {
                locations.append(location)
            }
        }
        self.tableView.reloadData()
    }
    
}

// MARK: - 델리게이트
extension SearchViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

// MARK: - 테이블뷰 확장
extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = locations[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sendDataAndPop(location: locations[indexPath.row])
    }
}



