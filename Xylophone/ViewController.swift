//
//  ViewController.swift
//  Xylophone
//
//  Created by Bola Gadalla on 19/01/20.
//  Copyright © 2020 Bola Gadalla. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    var player: AVAudioPlayer!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func KeyButtonPressed(_ sender: UIButton)
    {
        let Sound = sender.currentTitle!
        sender.alpha = 0.5
        playSound(noteSound: Sound)
        // Creates a delay for the code inside the block to run
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2)
        {
            sender.alpha = 1
        }
    }
    
    func playSound(noteSound: String)
    {
        let url = Bundle.main.url(forResource: noteSound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

