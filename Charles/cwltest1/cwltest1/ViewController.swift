//
//  ViewController.swift
//  cwltest1
//
//  Created by Charles Letcher on 10/3/15.
//  Copyright © 2015 Charles Letcher. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var likeButton: UIButton?
    @IBOutlet weak var instruction: UILabel?
 
    //http://stackoverflow.com/questions/24043904/creating-and-playing-a-sound-in-swift
    @IBAction func likedThis(sender: UIButton) {
        instruction?.text="test";
        
        if let soundURL = NSBundle.mainBundle().URLForResource("Pew_Pew", withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
    }
    @IBOutlet weak var mybutt: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

