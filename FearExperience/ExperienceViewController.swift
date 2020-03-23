//
//  ExperienceViewController.swift
//  FearExperience
//
//  Created by Ganang Arief Pratama on 23/03/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit
import AVKit

class ExperienceViewController: UIViewController, AVPlayerViewControllerDelegate {
    
    let playerViewController = AVPlayerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
        playVideo()
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    func playVideo() {
        
        guard let videoURL = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")  else { print("url error"); return }
            
        let player = AVPlayer(url: videoURL)
        playerViewController.player = player
        playerViewController.showsPlaybackControls = true
        self.present(playerViewController, animated: true) {
            self.playerViewController.player!.play()
            self.playerViewController.addObserver(self, forKeyPath:#keyPath(UIViewController.view.frame), options: [.old, .new], context: nil)
        }
    }
    
    override func observeValue(forKeyPath keyPath: String?,
                               of object: Any?,
                               change: [NSKeyValueChangeKey : Any]?,
                               context: UnsafeMutableRawPointer?)
    {

        if (playerViewController.isBeingDismissed) {
            let value = UIInterfaceOrientation.portrait.rawValue
            UIDevice.current.setValue(value, forKey: "orientation")
            self.navigationController?.popViewController(animated: true)
        }
    }

}
