//
//  ExperienceViewController.swift
//  FearExperience
//
//  Created by Ganang Arief Pratama on 23/03/20.
//  Copyright © 2020 Untitled. All rights reserved.
//

import UIKit
import AVKit

class ExperienceController: UIViewController, AVPlayerViewControllerDelegate {
    
    var alreadyPlayVideo = false
    let playerViewController = LandscapePlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.navigationController?.navigationBar.isHidden = true
        
        playVideo()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        if alreadyPlayVideo == true {
            Utils.lockOrientation(.portrait)
        }
        self.navigationController?.navigationBar.isHidden = false
    }
    
    func playVideo() {
        Utils.lockOrientation(.all)
        guard let videoURL = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")  else { print("url error"); return }
        
        let player = AVPlayer(url: videoURL)
        playerViewController.player = player
        playerViewController.showsPlaybackControls = true
        self.present(playerViewController, animated: true) {
            self.playerViewController.player!.play()
            self.playerViewController.addObserver(self, forKeyPath:#keyPath(UIViewController.view.frame), options: [.old, .new], context: nil)
        }
        alreadyPlayVideo = true
    }
    
    override func observeValue(forKeyPath keyPath: String?,
                               of object: Any?,
                               change: [NSKeyValueChangeKey : Any]?,
                               context: UnsafeMutableRawPointer?)
    {
        
        if (playerViewController.isBeingDismissed) {
            let value = UIInterfaceOrientation.portrait.rawValue
            UIDevice.current.setValue(value, forKey: "orientation")
            self.navigationController?.popViewController(animated: false)
        }
    }
}

class LandscapePlayer: AVPlayerViewController {
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return .landscape
    }
}
