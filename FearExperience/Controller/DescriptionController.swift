//
//  DescriptionController.swift
//  FearExperience
//
//  Created by Aji Saputra Raka Siwi on 01/04/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit

class DescriptionController: UIViewController {
    
    private var descriptionView: DescriptionView!
    var fearExperience: FearExperienceModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.descriptionView = DescriptionView(frame: self.view.frame)
        self.view = self.descriptionView
        
        self.navigationItem.largeTitleDisplayMode = .never
        
        self.title = self.fearExperience.title
        self.descriptionView.fearExperienceImageView.image = UIImage(named: self.fearExperience.mainImageString)
        
        self.descriptionView.buttonPlay.addTarget(self, action: #selector(buttonPlayPressed), for: .touchUpInside)
    }
    
    @objc private func buttonPlayPressed(){
        
    }
}
