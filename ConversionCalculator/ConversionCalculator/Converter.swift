//
//  Converter.swift
//  ConversionCalculator
//
//  Created by Max Taylor on 4/13/18.
//  Copyright © 2018 Max Taylor. All rights reserved.
//

import Foundation

struct Converter {
    let label: String
    var inputUnit: Double
    var outputUnit: Double
    var inputStringLabel: String
    var outputStringLabel: String
    let inputType: converterType
    let outputType: converterType
    
    init(label: String, inputUnit: Double, outputUnit: Double, inputStringLabel: String, outputStringLabel: String, inputType: converterType, outputType: converterType) {
        self.label = label
        self.inputUnit = inputUnit
        self.outputUnit = outputUnit
        self.inputStringLabel = inputStringLabel
        self.outputStringLabel = outputStringLabel
        self.inputType = inputType
        self.outputType = outputType
    }
    
    static func convert(converter: inout Converter) {
        
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
    
}
