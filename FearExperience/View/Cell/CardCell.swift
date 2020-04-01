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
        view.layer.cornerRadius = 12
        
        return view
    }()
    
    let fearExperienceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 12
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()

    lazy var buttonPlay: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "play.fill")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("PLAY", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = UIColor(red:0.00, green:0.76, blue:0.38, alpha:1.00)
        button.layer.cornerRadius = 16
        button.setImage(image, for: UIControl.State.normal)
        button.tintColor = .white
        button.contentMode = .scaleAspectFit
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top:0, left: 0, bottom:0, right: -85)
        button.titleEdgeInsets = UIEdgeInsets(top:0, left: -15, bottom:0, right:20)
        button.addTarget(self, action:#selector(onClickPlay), for: .touchUpInside)
        button.startAnimatingPressActions()
        
        return button

    }()
    
    @objc func onClickPlay() {
        let experienceView = ExperienceController()
        experienceView.modalPresentationStyle = .fullScreen
        view?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        view?.navigationController?.pushViewController(experienceView, animated: true)
    }
    
    let blurredView: UIView = {
       let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let visualEffectView: UIVisualEffectView = {
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        visualEffectView.alpha = 0.9
        visualEffectView.clipsToBounds = true
        visualEffectView.layer.cornerRadius = 12
        visualEffectView.translatesAutoresizingMaskIntoConstraints = false
        visualEffectView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        return visualEffectView
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(containerView)
        containerView.addSubview(fearExperienceImageView)
        addSubview(buttonPlay)
        containerView.addSubview(blurredView)

        containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        containerView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        fearExperienceImageView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        fearExperienceImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        fearExperienceImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        fearExperienceImageView.heightAnchor.constraint(equalTo: containerView.heightAnchor).isActive = true
        
        buttonPlay.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        buttonPlay.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        buttonPlay.widthAnchor.constraint(equalToConstant: 100).isActive = true
        buttonPlay.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        blurredView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        blurredView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        blurredView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        blurredView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        
        self.blurredView.addSubview(visualEffectView)
        visualEffectView.bottomAnchor.constraint(equalTo: blurredView.bottomAnchor).isActive = true
        visualEffectView.topAnchor.constraint(equalTo: blurredView.topAnchor).isActive = true
        visualEffectView.leadingAnchor.constraint(equalTo: blurredView.leadingAnchor).isActive = true
        visualEffectView.trailingAnchor.constraint(equalTo: blurredView.trailingAnchor).isActive = true
    }
}
