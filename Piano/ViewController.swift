//
//  ViewController.swift
//  Piano
//
//  Created by Nick on 12.03.2020.
//  Copyright © 2020 Nick Marchuk. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer?

    @IBAction func pressedNotes(_ sender: UIButton) {
    
        guard let nameNotes = sender.currentTitle else { return }
        
        playMusic(nameNotes: nameNotes)
        
    }
    
    func playMusic(nameNotes: String) {
        guard let url = Bundle.main.url(forResource: nameNotes, withExtension: "mp3") else {
            return
        }
        player = try! AVAudioPlayer(contentsOf: url)
        player!.play()
    }

}
