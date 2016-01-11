//
//  ViewController.swift
//  Work with Focusing-Music
//
//  Created by Dao Van Thuong on 1/8/16.
//  Copyright © 2016 Nadia. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func playSound(soundName: String)
    {
        
        let coinSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(soundName, ofType: "mp4")!)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOfURL:coinSound)
            audioPlayer.prepareToPlay()
            audioPlayer.delegate = self
            audioPlayer.play()

        }catch {
            print("Error getting the audio file")
        }
    }
    @IBAction func btnPlayClicked(sender: AnyObject) {
        playSound("work_water")
    }

}

