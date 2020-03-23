//
//  CardViewCell.swift
//  FearExperience
//
//  Created by Ganang Arief Pratama on 23/03/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit

class CardCell: BaseCell {
    
    var view: UIViewController?

    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 12
        
        return view
    }()
    
    lazy var buttonPlay: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Play", for: UIControl.State.normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .white
        button.layer.cornerRadius = 8
        button.addTarget(self, action:#selector(onClickPlay), for: .touchUpInside)

        return button
    }()
    
    @objc func onClickPlay() {
        let experienceView = ExperienceViewController()
        view?.navigationController?.pushViewController(experienceView, animated: true)
    }
    
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        containerView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        addSubview(buttonPlay)
        buttonPlay.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        buttonPlay.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        buttonPlay.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
