//
//  ViewController.swift
//  SaveMyDefaults
//
//  Created by student on 3/9/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var serialNumberTF: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var switchObject: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func deleteBtn(_ sender: UIButton) {
        serialNumberTF.text = ""
        slider.value = 0.5
        switchObject.isOn = true
    }
    
    @IBAction func loadBtn(_ sender: UIButton) {
        serialNumberTF.text = UserDefaults.standard.string(forKey: "Text")
        slider.value = UserDefaults.standard.float(forKey: "Slider")
        switchObject.isOn = UserDefaults.standard.bool(forKey: "Switch")
    }
    
    @IBAction func saveBtn(_ sender: UIButton) {
        UserDefaults.standard.set(serialNumberTF.text, forKey: "Text")
        UserDefaults.standard.set(slider.value, forKey: "Slider")
        UserDefaults.standard.set(switchObject.isOn, forKey: "Switch")
    }
}
