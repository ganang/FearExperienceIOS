//
//  DescriptionView.swift
//  FearExperience
//
//  Created by Ganang Arief Pratama on 31/03/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit

class DescriptionView: BaseView {
    
    let fearExperienceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "1")
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsVerticalScrollIndicator = false
        
        return view
    }()
    
    let desctiptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        return label
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
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
        visualEffectView.translatesAutoresizingMaskIntoConstraints = false
        return visualEffectView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.text = "01:40"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        button.startAnimatingPressActions()
        return button
    }()
    
    let descriptionTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Description :"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func setupView() {
        self.backgroundColor = .black
        addSubview(scrollView)
        scrollView.addSubview(fearExperienceImageView)
        scrollView.addSubview(desctiptionLabel)
        scrollView.addSubview(descriptionTitleLabel)

        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        fearExperienceImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        fearExperienceImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0).isActive = true
        fearExperienceImageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0).isActive = true
        fearExperienceImageView.bottomAnchor.constraint(equalTo: descriptionTitleLabel.topAnchor, constant: -16).isActive = true
        fearExperienceImageView.heightAnchor.constraint(equalToConstant: self.frame.height / 2.5).isActive = true
        fearExperienceImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        descriptionTitleLabel.topAnchor.constraint(equalTo: fearExperienceImageView.bottomAnchor, constant: 16).isActive = true
        descriptionTitleLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        descriptionTitleLabel.bottomAnchor.constraint(equalTo: desctiptionLabel.topAnchor , constant: -8).isActive = true
        
        desctiptionLabel.topAnchor.constraint(equalTo: descriptionTitleLabel.bottomAnchor, constant: 8).isActive = true
        desctiptionLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        desctiptionLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -24).isActive = true
        desctiptionLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -32).isActive = true
                
        fearExperienceImageView.addSubview(blurredView)
        
        blurredView.bottomAnchor.constraint(equalTo: fearExperienceImageView.bottomAnchor).isActive = true
        blurredView.trailingAnchor.constraint(equalTo: fearExperienceImageView.trailingAnchor).isActive = true
        blurredView.leadingAnchor.constraint(equalTo: fearExperienceImageView.leadingAnchor).isActive = true
        blurredView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        
        self.blurredView.addSubview(visualEffectView)
        self.blurredView.addSubview(titleLabel)
        self.blurredView.addSubview(timeLabel)
        
        visualEffectView.bottomAnchor.constraint(equalTo: blurredView.bottomAnchor).isActive = true
        visualEffectView.topAnchor.constraint(equalTo: blurredView.topAnchor).isActive = true
        visualEffectView.leadingAnchor.constraint(equalTo: blurredView.leadingAnchor).isActive = true
        visualEffectView.trailingAnchor.constraint(equalTo: blurredView.trailingAnchor).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: blurredView.topAnchor, constant: 8).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: blurredView.leadingAnchor, constant: 32).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: timeLabel.topAnchor, constant: -5).isActive = true
        
        timeLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5).isActive = true
        timeLabel.leadingAnchor.constraint(equalTo: blurredView.leadingAnchor, constant: 32).isActive = true
        timeLabel.bottomAnchor.constraint(equalTo: blurredView.bottomAnchor, constant: -5).isActive = true
        timeLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        scrollView.addSubview(buttonPlay)
        buttonPlay.bottomAnchor.constraint(equalTo: fearExperienceImageView.bottomAnchor, constant: -10).isActive = true
        buttonPlay.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16).isActive = true
        buttonPlay.widthAnchor.constraint(equalToConstant: 100).isActive = true
        buttonPlay.heightAnchor.constraint(equalToConstant: 35).isActive = true
    }

}
