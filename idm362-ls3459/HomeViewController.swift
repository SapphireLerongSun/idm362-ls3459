//
//  HomeViewController.swift
//  idm362-ls3459
//
//  Created by 孙太阳Sapphire on 2021/2/9.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var scroll: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do after loading.
        
        
        displayLabel.text = "Loaded..."
    }
    
    @IBAction func clickMe(_ sender: Any) {
        // displayLabel.text = "Well Hello there."
        displayLabel.text = "Well Hello there\(nameText.text!)."
    }
    
    // Disable keyboard when user touches screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @IBAction func sliderMoving(_ sender: UISlider) {
        displayLabel.text = "Slider value is\(sender.value)"
    }
    
    @IBAction func spinSwitch(_ sender: UISwitch) {
        if (sender.isOn){
            scroll.startAnimating()
        } else {
            scroll.stopAnimating()
        }
    }
    
    
}// end ViewController
