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
    @IBOutlet weak var textarea1: UITextField?
    @IBOutlet weak var butt2: UIButton?

 
    //http://stackoverflow.com/questions/24043904/creating-and-playing-a-sound-in-swift
    @IBAction func likedThis(sender: UIButton) {
        if(instruction?.text=="pew"){
            instruction?.text="pew pew";
        } else {
            instruction?.text="pew";
        }
        let a:Int? = Int((textarea1?.text)!);
        
        if(a == nil) {
            textarea1?.text = "1";
        } else {
          textarea1?.text = (String)(a! + 1);
        }
        
        
        
        
        if let soundURL = NSBundle.mainBundle().URLForResource("Pew_Pew", withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
    }
    @IBOutlet weak var mybutt: UIButton!
    @IBAction func resetcount(sender: UIButton) {
              textarea1?.text = "0";
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

