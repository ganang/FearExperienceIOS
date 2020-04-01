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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.descriptionView = DescriptionView(frame: self.view.frame)
        self.view = self.descriptionView
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.title = "The Haunted Hospital"
    }
}
