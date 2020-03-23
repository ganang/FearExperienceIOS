//
//  MainViewController.swift
//  FearExperience
//
//  Created by Ganang Arief Pratama on 23/03/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
    
    let experienceCellId = "EXPERIENCE_CELL_ID"
    let experiences: [[String: Any]] = [["name": "Fear 1"], ["name": "Fear 2"], ["name": "Fear 3"] ]
    
    lazy var experienceCollectionView: UICollectionView = {
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        collectionview.delegate = self
        collectionview.dataSource = self
        collectionview.register(CardCell.self, forCellWithReuseIdentifier: experienceCellId)
        collectionview.reloadData()
        
        return collectionview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(experienceCollectionView)
        experienceCollectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        experienceCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        experienceCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        experienceCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
    func onClickPlay() {
        let experienceView = ExperienceViewController()
        navigationController?.pushViewController(experienceView, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return experiences.count
    }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: experienceCellId, for: indexPath) as! CardCell
        cell.view = self
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width - 32, height: 500.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 16
    }

}
