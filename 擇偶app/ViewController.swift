//
//  ViewController.swift
//  擇偶app
//
//  Created by stoller on 2020/5/13.
//  Copyright © 2020年 cgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var bloodTypeSegment: UISegmentedControl!
    
    @IBOutlet weak var animalSwitch: UISwitch!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var heightNumber: UILabel!
    
    @IBOutlet weak var cryImageView: UIImageView!
    
    @IBOutlet weak var bingoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func height(_ sender: UISlider) {
        heightNumber.isHidden = false
        heightNumber.text = String(Int(sender.value))
    }
    
    @IBAction func okButton(_ sender: AnyObject) {
        let star = textField.text!
        let blood = bloodTypeSegment.selectedSegmentIndex
        let animalLover = animalSwitch.isOn
        let height = Int(heightSlider.value)
        
        if star == "射手座" && blood == 0 && animalLover && height == 158 {
            bingoImage.isHidden = false
            cryImageView.isHidden = true
            
        } else {
            bingoImage.isHidden = true
            cryImageView.isHidden = false
            
        }

        
    }
}

