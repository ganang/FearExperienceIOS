//
//  WarningViewController.swift
//  FearExperience
//
//  Created by Ganang Arief Pratama on 23/03/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit

class WarningViewController: UIViewController {
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .red
        button.layer.cornerRadius = 8
        button.addTarget(self, action:#selector(onClickContinue), for: .touchUpInside)

        return button
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        self.navigationController?.isNavigationBarHidden = true
        
        setupViews()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
    @objc func onClickContinue() {
        let mainView = MainViewController()
        navigationController?.pushViewController(mainView, animated: true)
    }
    
    func setupViews() {
        view.addSubview(continueButton)
        continueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        continueButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}
