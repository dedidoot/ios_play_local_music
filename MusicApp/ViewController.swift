//
//  ViewController.swift
//  MusicApp
//
//  Created by Dedi Dot on 29/04/19.
//  Copyright © 2019 Dedi Dot. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonOnClick(_ sender: UIButton) {
        print(sender.tag)
        
        do {
            let musicResourceUrl = Bundle.main.url(forResource: "note" + String(sender.tag), withExtension: "wav")!
            
            print(musicResourceUrl)
            player  = try AVAudioPlayer(contentsOf: musicResourceUrl)
            guard let playerx = player else { return }
            
            playerx.prepareToPlay()
            playerx.play()
            
        } catch let error as NSError{
            print(error,"wkkwk")
        }
        
    }
}
