//
//  WarningView.swift
//  FearExperience
//
//  Created by Aji Saputra Raka Siwi on 25/03/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit

extension UIButton {
    
    func startAnimatingPressActions() {
        addTarget(self, action: #selector(animateDown), for: [.touchDown, .touchDragEnter])
        addTarget(self, action: #selector(animateUp), for: [.touchDragExit, .touchCancel, .touchUpInside, .touchUpOutside])
    }
    
    @objc private func animateDown(sender: UIButton) {
        animate(sender, transform: CGAffineTransform.identity.scaledBy(x: 0.95, y: 0.95))
    }
    
    @objc private func animateUp(sender: UIButton) {
        animate(sender, transform: .identity)
    }
    
    private func animate(_ button: UIButton, transform: CGAffineTransform) {
        UIView.animate(withDuration: 0.4,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 3,
                       options: [.curveEaseInOut],
                       animations: {
                        button.transform = transform
            }, completion: nil)
    }
    
}

class WarningView: BaseView {
    
    let showWarning: UIImageView = {
        let warning = UIImage(named: "Warning")
        let warningPrompt = UIImageView(image: warning)
        warningPrompt.translatesAutoresizingMaskIntoConstraints = false
        return warningPrompt
    } ()
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CONTINUE", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .red
        button.layer.cornerRadius = 8
        button.startAnimatingPressActions()
        
        return button
    }()
    
    
    override func setupView() {
        self.backgroundColor = .black
        
        self.addSubview(showWarning)
        showWarning.topAnchor.constraint(equalTo: self.topAnchor, constant: 170).isActive = true
        showWarning.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -200).isActive = true
        showWarning.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        self.addSubview(continueButton)
        continueButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -60).isActive = true
        continueButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        continueButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
    }
}
