//
//  DescriptionView.swift
//  FearExperience
//
//  Created by Ganang Arief Pratama on 31/03/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit

class DescriptionView: BaseView {
    
    lazy var closeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(systemName: "xmark" )?.withRenderingMode(.alwaysTemplate)
        button.backgroundColor = UIColor(white: 1, alpha: 1)
        button.tintColor = .gray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.alpha = 0.3
        button.setImage(image, for: UIControl.State.normal)
        button.contentMode = .scaleAspectFit
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top:0, left: 0, bottom:0, right: 0)
        
        return button
    }()
    
    let fearExperienceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "1")
        return imageView
    }()
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsVerticalScrollIndicator = false
//        view.contentSize = CGSize(width: self.frame.width, height: self.frame.height)
        
        return view
    }()
    
    let desctiptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        label.text = "dlfdjkf dfljdkfj dkfjdk jflkdjf dsjfkd klfdjk fjdkf dlkjfkldjf kdsjfkejrojfk ldjnl kdjkl fjsefjdksjf lkdsjfkl dsjfkldsj fkdsjf kldsjfkd"
        
        return label
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .systemPink
        
        return view
    }()

    override func setupView() {
        self.backgroundColor = .black
        addSubview(scrollView)
        scrollView.addSubview(fearExperienceImageView)
        scrollView.addSubview(desctiptionLabel)

        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        fearExperienceImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        fearExperienceImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0).isActive = true
        fearExperienceImageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0).isActive = true
        fearExperienceImageView.bottomAnchor.constraint(equalTo: desctiptionLabel.topAnchor, constant: -16).isActive = true
        fearExperienceImageView.heightAnchor.constraint(equalToConstant: self.frame.height / 2.5).isActive = true
        fearExperienceImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        fearExperienceImageView.backgroundColor = .green
        
        desctiptionLabel.topAnchor.constraint(equalTo: fearExperienceImageView.bottomAnchor, constant: 16).isActive = true
        desctiptionLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16).isActive = true
        desctiptionLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16).isActive = true
        desctiptionLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16).isActive = true
//        desctiptionLabel.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        desctiptionLabel.backgroundColor = .systemOrange
        
//        containerView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16).isActive = true
//        containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16).isActive = true
//        containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16).isActive = true
//        containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16).isActive = true
//        containerView.heightAnchor.constraint(equalToConstant: 700).isActive = true
//        containerView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
//
//        containerView.backgroundColor = .green

//        containerView.addSubview(fearExperienceImageView)
//        fearExperienceImageView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
//        fearExperienceImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
//        fearExperienceImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
//        fearExperienceImageView.heightAnchor.constraint(equalTo: containerView.heightAnchor).isActive = true
//
//        addSubview(closeButton)
//        closeButton.topAnchor.constraint(equalTo: topAnchor, constant: 52).isActive = true
//        closeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
//        closeButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
//        closeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        closeButton.layer.cornerRadius = 25

//        containerView.addSubview(desctiptionLabel)
//        desctiptionLabel.topAnchor.constraint(equalTo: fearExperienceImageView.bottomAnchor, constant: 16).isActive = true
//        desctiptionLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
//        desctiptionLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16).isActive = true
        
    }

}
