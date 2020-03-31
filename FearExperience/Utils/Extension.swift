//
//  Extension.swift
//  FearExperience
//
//  Created by Aji Saputra Raka Siwi on 27/03/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit

//MARK: UIButton
extension UIButton {
    
    func startAnimatingPressActions() {
        addTarget(self, action: #selector(animateDown), for: [.touchDown, .touchDragEnter])
        addTarget(self, action: #selector(buttonTapped), for: [.touchDown, .touchDragEnter])
        addTarget(self, action: #selector(animateUp), for: [.touchDragExit, .touchCancel, .touchUpInside, .touchUpOutside])
        addTarget(self, action: #selector(buttonUntapped), for: [.touchDragExit, .touchCancel, .touchUpInside, .touchUpOutside])
    }
    
    @objc private func animateDown(sender: UIButton) {
        animate(sender, transform: CGAffineTransform.identity.scaledBy(x: 0.95, y: 0.95))
    }
    
    @objc private func animateUp(sender: UIButton) {
        animate(sender, transform: .identity)
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
        if self.backgroundColor == UIColor.red {
            self.backgroundColor = UIColor(red:0.69, green:0.2, blue:0.13, alpha:1.00)
        }
        else if self.backgroundColor == UIColor(red:0.00, green:0.76, blue:0.38, alpha:1.00) {
            self.backgroundColor = UIColor(red:0.00, green:0.57, blue:0.29, alpha:1.00)
        }
    }
    
    @IBAction func buttonUntapped(sender: UIButton) {
        if self.backgroundColor == UIColor(red:0.69, green:0.2, blue:0.13, alpha:1.00) {
            self.backgroundColor = UIColor.red
        }
        else if self.backgroundColor == UIColor(red:0.00, green:0.57, blue:0.29, alpha:1.00) {
            self.backgroundColor = UIColor(red:0.00, green:0.76, blue:0.38, alpha:1.00)
        }
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
