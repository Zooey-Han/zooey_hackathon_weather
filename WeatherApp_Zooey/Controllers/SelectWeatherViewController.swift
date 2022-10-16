//
//  SelectWeatherViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit

final class SelectWeatherViewController: UIViewController {
    
    var selecListManager = SelectListManager()
    
    // MARK: - 컬렉션뷰
    private var collectionView : UICollectionView = {
        let layout = UICollectionViewLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
 
    // MARK: - 서치바
    let serchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupSelectionData()
        collectionUI()
        makeUI()
        navigationItem.searchController = serchController
        setupSerchBar()
    }
    // MARK: - 기본 화면 셋팅
    func makeUI() {
        view.backgroundColor = .white
        title = "지역 설정"
    }
    
    // MARK: - 데이터 받아오기
    func setupSelectionData() {
        selecListManager.makeSelectData()
    }
    
    // MARK: - 컬렉션뷰 셋팅
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(SelectCell.self, forCellWithReuseIdentifier: "SelectCell")
        collectionView.collectionViewLayout = compositonLayout()
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    // MARK: - 컬렉션뷰 레이아웃
    func collectionUI() {
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    // MARK: - 서치바 셋팅
    func setupSerchBar() {
        let serchController = UISearchController()
        //serchController.searchBar.delegate = self
        serchController.searchBar.placeholder = "지금, 날씨가 궁금한 곳은?"
    }

    // MARK: - 네비게이션바 버튼 설정
    @objc func backBotton() {
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: - 컬렉션뷰 확장
extension SelectWeatherViewController: UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
}

extension SelectWeatherViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return selecListManager.getSelectList().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectCell", for: indexPath) as! SelectCell
        cell.locationName.text = selecListManager[indexPath.row].locationName
        cell.weahterIcon.image = selecListManager[indexPath.row].weatherIcon
        cell.layer.cornerRadius = 20
        return cell
    }
}

// MARK: - 컴포지션레이아웃 설정
extension SelectWeatherViewController {
    fileprivate func compositonLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout {
            (sectionIndex: Int, layoutEnviroment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            // 아이템 사이즈
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .absolute(100))
            // 아이템을 몇 개 보여줄지
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
            // 그룹 사이즈
            let groupHeight = NSCollectionLayoutDimension.fractionalWidth(1/3)
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: groupHeight)
            // 그룹을 몇 개 보여줄지
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
            // 섹션 설정
            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            //section.orthogonalScrollingBehavior = .groupPaging
            return section
        }
        return layout
    }
}




