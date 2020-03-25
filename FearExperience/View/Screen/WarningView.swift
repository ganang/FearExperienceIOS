//
//  WarningView.swift
//  FearExperience
//
//  Created by Aji Saputra Raka Siwi on 25/03/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit

class WarningView: BaseView {
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .red
        button.layer.cornerRadius = 8

        return button
    }()
    
    override func setupView() {
        self.backgroundColor = .black
        
        self.addSubview(continueButton)
        continueButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -60).isActive = true
        continueButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        continueButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
