//
//  HomeViewController.swift
//  idm362-ls3459

import UIKit
// Add Audio and Video library
import AVFoundation

var myAudioPlayerObj = AVAudioPlayer()

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    // Do after loading.
        
        let mySound = Bundle.main.path(forResource: "sound/Cookie crack", ofType: "mp3")
        
        do {
            myAudioPlayerObj = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: mySound!))
            myAudioPlayerObj.prepareToPlay()
            print("Sound file loaded and prepped")
        } catch{
            print(error)
        }
        
        
    } // viewDidLoad
    

    @IBAction func playStopCrack(_ sender: Any) {
        print("playStopCrack called")
        if(myAudioPlayerObj.isPlaying){
            myAudioPlayerObj.stop()
        }else{
            myAudioPlayerObj.play()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

} // ViewController
