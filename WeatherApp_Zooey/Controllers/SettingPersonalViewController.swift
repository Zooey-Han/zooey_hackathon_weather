//
//  SettingPersonalViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit

class SettingPersonalViewController: UIViewController {
    
    //테이블뷰
    private let tableView = UITableView()
    
    var settingListManager = SettingLsitManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
        setupTableView()
        setupTableViewConstraints()
        setupData()
    }
    
    func makeUI() {
        view.backgroundColor = .white
        title = "설정"
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.rowHeight = 60
        tableView.register(SettingPersonalCell.self, forCellReuseIdentifier: "SettingCell")
    }
    
    func setupData() {
        settingListManager.makeSettingListDatas()
    }
    
    
    // MARK: - 네비게이션바 버튼 설정
    @objc func backBotton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: - 테이블뷰 셋팅
    func setupTableViewConstraints() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
}


// MARK: - 테이블뷰 확장
extension SettingPersonalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingListManager.getSettingList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as! SettingPersonalCell
        cell.subjName.text = settingListManager[indexPath.row].settingLabel
        cell.selectionStyle = .gray
        return cell
    }
}
