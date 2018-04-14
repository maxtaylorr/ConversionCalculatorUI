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
    let inputUnit: String
    let outputUnit: String
    
    init(label: String, inputUnit: String, outputUnit: String) {
        self.label = label
        self.inputUnit = inputUnit
        self.outputUnit = outputUnit
    }
}
