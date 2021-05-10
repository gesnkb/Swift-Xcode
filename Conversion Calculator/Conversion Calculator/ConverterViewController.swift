//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Grace Sanders on 3/22/21.
//

import UIKit

class ConverterViewController: UIViewController {
    
    
    struct converters{
        var label: String
        var inputUnit: String
        var outputUnit: String
    }
    let convert1 = converters(label: "farenheit to celcius", inputUnit: "F°", outputUnit: "C°")
    let convert2 = converters(label: "celcius to farenheit", inputUnit: "C°", outputUnit: "F°")
    let convert3 = converters(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km")
    let convert4 = converters(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")
    
    
    @IBOutlet weak var outputDisplay: UITextField!
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    var Selection = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputDisplay.placeholder = convert1.inputUnit
        outputDisplay.placeholder = convert1.outputUnit
                
    }
    
   
    @IBAction func button7(_ sender: Any) {
        let seven = 0
        repeat {
            inputDisplay.text?.append("7")
            outputDisplay.text?.append("7")
        } while seven == 1
        
       
    }
    
    
    @IBAction func button8(_ sender: Any) {
        let eight = 0
        repeat {
    inputDisplay.text?.append("8")
    outputDisplay.text?.append("8")
        } while eight == 1
        
    }
    @IBAction func button9(_ sender: Any) {
        let nine = 0
        repeat {
    inputDisplay.text?.append("9")
    outputDisplay.text?.append("9")
        } while nine == 1
        
    }
    
    @IBAction func button4(_ sender: Any) {
        let four = 0
        repeat {
    inputDisplay.text?.append("4")
    outputDisplay.text?.append("4")
        } while four == 1
        
    }
    
    @IBAction func button5(_ sender: Any) {
        let five = 0
        repeat {
    inputDisplay.text?.append("5")
    outputDisplay.text?.append("5")
        } while five == 1
        
    }
    
    
    @IBAction func button6(_ sender: Any) {
        let six = 0
        repeat {
    inputDisplay.text?.append("6")
    outputDisplay.text?.append("6")
        } while six == 1
        
    }
    
    
    @IBAction func button1(_ sender: Any) {
        let one = 0
        repeat {
    inputDisplay.text?.append("1")
    outputDisplay.text?.append("1")
        } while one == 1
        
    }
    
    @IBAction func button2(_ sender: Any) {
        let two = 0
        repeat {
    inputDisplay.text?.append("2")
    outputDisplay.text?.append("2")
        } while two == 1
        
    }
    
    @IBAction func button3(_ sender: Any) {
        let three = 0
        repeat {
    inputDisplay.text?.append("3")
    outputDisplay.text?.append("3")
        } while three == 1
        
    }
    
    @IBAction func button0(_ sender: Any) {
        let zero = 0
        repeat {
    inputDisplay.text?.append("0")
    outputDisplay.text?.append("0")
        } while zero == 1
        
    }
    
    @IBAction func decimalbutton(_ sender: Any) {
        let decimal = 0
        repeat {
    inputDisplay.text?.append(".")
    outputDisplay.text?.append(".")
        } while decimal == 1
        
    }
    @IBAction func negOrPos(_ sender: Any) {
        
        inputDisplay.text = String(Double(inputDisplay.text!)! * -1)
        outputDisplay.text = String(Double(outputDisplay.text!)! * -1)
    }
    
    @IBAction func clearButton(_ sender: Any) {
        
        self.inputDisplay.text = nil
        self.outputDisplay.text = nil
        
    }
    
    @IBAction func convertTap(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: convert1.label, style: .default, handler: {
            alertAction -> Void in
            self.inputDisplay.placeholder = self.convert1.inputUnit
            self.outputDisplay.placeholder = self.convert1.outputUnit
            self.Selection = 0
            self.inputDisplay.text = nil
            self.outputDisplay.text = nil
            
        } ))
        alert.addAction(UIAlertAction(title: convert2.label, style: .default, handler: {
            alertAction -> Void in
            self.inputDisplay.placeholder = self.convert2.inputUnit
            self.outputDisplay.placeholder = self.convert2.outputUnit
            self.Selection = 1
            self.inputDisplay.text = nil
            self.outputDisplay.text = nil
        }))
        alert.addAction(UIAlertAction(title: convert3.label, style: .default, handler: {
            alertAction -> Void in
            self.inputDisplay.placeholder = self.convert3.inputUnit
            self.outputDisplay.placeholder = self.convert3.outputUnit
            self.Selection = 2
            self.inputDisplay.text = nil
            self.outputDisplay.text = nil
        }))
        alert.addAction(UIAlertAction(title: convert4.label, style: .default, handler: {
            alertAction -> Void in
            self.inputDisplay.placeholder = self.convert4.inputUnit
            self.outputDisplay.placeholder = self.convert4.outputUnit
            self.Selection = 3
            self.inputDisplay.text = nil
            self.outputDisplay.text = nil
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func farToCel (_ number: Double ) -> Double{
        let result = (number - 32 * (5/9))
        return result
    }
    
    func celToFar (_ number: Double) -> Double{
        let result = (number * (9/5) + 32)
        return result
    }
    
    func miToKm (_ number: Double) -> Double {
        let result = (number * 1.609)
        return result
    }
    
    func kmToMi (_ number: Double) -> Double{
        let result = (number / 1.609)
        return result
    }
    
    func selectedConversion () {
       
        
        //let result = Double(inputDisplay.text!)! * 1
        
        let input1 = Double(inputDisplay.text!)  //; number - 32 * (5/9)
        var output1: Double //to match argument from functions
        
        //var input2 = Double(inputDisplay.text!) //! * (9/5) + 32
        //var output2 = Double(outputDisplay.text!)
        
        //var input3 = Double(inputDisplay.text!)
        //var output3 = Double(outputDisplay.text!)
        
        //var input4 = Double(inputDisplay.text!)
        //var output4 = Double(outputDisplay.text!)
        
        
      
        if Selection == 0 {
            output1 = farToCel(input1!)
            outputDisplay.text = "\(output1)" //to avoid "written but not read" warning
        }
        if Selection == 1 {
            output1 = celToFar(input1!)
            outputDisplay.text = "\(output1)"
        }
        if Selection == 2 {
            output1 = miToKm(input1!)
            outputDisplay.text = "\(output1)"
        }
        if Selection == 3 {
            output1 = kmToMi(input1!)
            outputDisplay.text = "\(output1)"
        }
        else {
            inputDisplay.text = "No valid inputs were entered"
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


}
