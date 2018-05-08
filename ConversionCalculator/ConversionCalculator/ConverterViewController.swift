//
//  ConverterViewController.swift
//  ConversionCalculator
//
//  Created by Max Taylor on 4/13/18.
//  Copyright © 2018 Max Taylor. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UITextFieldDelegate {

    var converters = [Converter]()

    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        converters.append(Converter(label: "fahrenheit to celsius", inputUnit: 0.0, outputUnit: 0.0, inputStringLabel: "°F", outputStringLabel: "°C", inputType: converterType.F, outputType: converterType.C))
        converters.append(Converter(label: "celsius to fahrenheit", inputUnit: 0.0, outputUnit: 0.0, inputStringLabel: "°C", outputStringLabel: "°F", inputType: converterType.C, outputType: converterType.F))
        converters.append(Converter(label: "miles to kilometers", inputUnit: 0.0, outputUnit: 0.0, inputStringLabel: "mi", outputStringLabel: "km", inputType: converterType.mi, outputType: converterType.km))
        converters.append(Converter(label: "kilometers to miles", inputUnit: 0.0, outputUnit: 0.0, inputStringLabel: "km", outputStringLabel: "mi", inputType: converterType.km, outputType: converterType.mi))
        
        inputDisplay.insertText(" " + converters[0].inputStringLabel)
        outputDisplay.insertText(" " + converters[0].outputStringLabel)
        
        inputDisplay.delegate = self
        outputDisplay.delegate = self
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func converterButton(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: "", preferredStyle: UIAlertControllerStyle.actionSheet)
        for converter in converters {
            let uiAlertAction = UIAlertAction(title: converter.label, style: UIAlertActionStyle.default, handler: {
                (alertAction) -> Void in
                self.inputDisplay.text = converter.inputStringLabel
                self.outputDisplay.text = converter.outputStringLabel
            })
            alert.addAction(uiAlertAction)
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    // everything works except for this and I feel like although it is somewhat hardcoded it should work...
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        converters[0].inputUnit = Double(inputDisplay.text ?? "") ?? 0.0
        convert(converter: &converters[0])
        outputDisplay.text = String(converters[0].outputUnit) + converters[0].outputStringLabel
        
        converters[1].inputUnit = Double(inputDisplay.text ?? "") ?? 0.0
        convert(converter: &converters[1])
        outputDisplay.text = String(converters[1].outputUnit) + converters[1].outputStringLabel
        
        converters[2].inputUnit = Double(inputDisplay.text ?? "") ?? 0.0
        convert(converter: &converters[2])
        outputDisplay.text = String(converters[2].outputUnit) + converters[2].outputStringLabel
        
        converters[3].inputUnit = Double(inputDisplay.text ?? "") ?? 0.0
        convert(converter: &converters[3])
        outputDisplay.text = String(converters[3].outputUnit) + converters[3].outputStringLabel
    }
    
    func convert(converter: inout Converter) {
        
        switch converter.inputType {
            
        case .km:
            converter.outputUnit = converter.inputUnit / 32.0
        case .mi:
            converter.outputUnit = converter.inputUnit * 32.0
        case .F:
            converter.outputUnit = converter.inputUnit * 1.60934
        case .C:
            converter.outputUnit = converter.inputUnit / 1.60934
        }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        inputDisplay.text = converters[0].inputStringLabel
        outputDisplay.text = converters[0].outputStringLabel
        
    }
    
    @IBAction func plusMinus(_ sender: Any) {
        inputDisplay.text = "-" + inputDisplay.text!
    }
    
    @IBAction func decimalButton(_ sender: Any) {
        inputDisplay.text = "." + inputDisplay.text!
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        inputDisplay.text = "0" + inputDisplay.text!
    }
    
    @IBAction func oneButton(_ sender: Any) {
        inputDisplay.text = "1" + inputDisplay.text!
    }
    
    @IBAction func twoButton(_ sender: Any) {
        inputDisplay.text = "2" + inputDisplay.text!
    }
    
    @IBAction func threeButton(_ sender: Any) {
        inputDisplay.text = "3" + inputDisplay.text!
    }
    
    @IBAction func fourButton(_ sender: Any) {
        inputDisplay.text = "4" + inputDisplay.text!
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        inputDisplay.text =  "5" + inputDisplay.text!
    }
    
    @IBAction func sixButton(_ sender: Any) {
        inputDisplay.text = "6" + inputDisplay.text!
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        inputDisplay.text = "7" + inputDisplay.text!
    }
    
    @IBAction func eightButton(_ sender: Any) {
        inputDisplay.text = "8" + inputDisplay.text!
    }
    
    @IBAction func nineButton(_ sender: Any) {
        inputDisplay.text = "9" + inputDisplay.text!
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
