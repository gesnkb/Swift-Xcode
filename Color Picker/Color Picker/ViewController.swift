//
//  ViewController.swift
//  Color Picker
//
//  Created by Grace Sanders on 3/3/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    let colors = ["red", "orange", "yellow", "green", "blue", "purple"]
    let eachColor: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row]
        self.view.backgroundColor = eachColor[row]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = eachColor[0]
        label.text = colors[0]
    }


}

