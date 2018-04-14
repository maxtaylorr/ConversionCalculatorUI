//
//  ConverterViewController.swift
//  ConversionCalculator
//
//  Created by Max Taylor on 4/13/18.
//  Copyright © 2018 Max Taylor. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    var converters = [Converter]()
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    @IBAction func converterButton(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: "", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: converters[0].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.insertText("")
            self.outputDisplay.insertText("")
            self.inputDisplay.insertText(self.converters[0].inputUnit)
            self.outputDisplay.insertText(self.converters[0].outputUnit)
        }))
        
        alert.addAction(UIAlertAction(title: converters[1].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.insertText("")
            self.outputDisplay.insertText("")
            self.inputDisplay.insertText(self.converters[1].inputUnit)
            self.outputDisplay.insertText(self.converters[1].outputUnit)
        }))
        
        alert.addAction(UIAlertAction(title: converters[2].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.insertText("")
            self.outputDisplay.insertText("")
            self.inputDisplay.insertText(self.converters[2].inputUnit)
            self.outputDisplay.insertText(self.converters[2].outputUnit)
        }))
        
        alert.addAction(UIAlertAction(title: converters[3].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.insertText("")
            self.outputDisplay.insertText("")
            self.inputDisplay.insertText(self.converters[3].inputUnit)
            self.outputDisplay.insertText(self.converters[3].outputUnit)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //var converters = [Converter]()
        
        converters.append(Converter(label: "fahrenheit to celsius", inputUnit: "°F", outputUnit: "°C"))
        converters.append(Converter(label: "celsius to fahrenheit", inputUnit: "°C", outputUnit: "°F"))
        converters.append(Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"))
        converters.append(Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi"))
        
        inputDisplay.insertText(converters[0].inputUnit)
        outputDisplay.insertText(converters[0].outputUnit)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
