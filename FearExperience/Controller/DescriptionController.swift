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
        self.descriptionView.desctiptionLabel.text = self.fearExperience.descriptionMovie
        self.descriptionView.titleLabel.text = self.fearExperience.title
        
        let time = Utils.secondsConverterToTime(self.fearExperience.time)
        self.descriptionView.timeLabel.text = "\(String(format: "%02d", time.minute)):\(String(format: "%02d", time.second))"
    }
    
    @objc private func buttonPlayPressed(){
        if self.fearExperience.fileBundleString == "" {
            Utils.createAlert(controller: self, style: .alert)
        } else {
            let experienceView = ExperienceController()
            experienceView.modalPresentationStyle = .fullScreen
            experienceView.videoUrl = ""
            Utils.lockOrientation(.all)
            self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
            self.navigationController?.pushViewController(experienceView, animated: true)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        Utils.lockOrientation(.portrait)
    }
}
