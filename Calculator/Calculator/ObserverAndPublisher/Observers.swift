//
//  Observers.swift
//  Calculator
//
//  Created by Ankit on 18/08/20.
//  Copyright © 2020 Ankit. All rights reserved.
//

import SwiftUI

class GlobleEnvironment: ObservableObject {
    @Published var displayValue = ""
    
    func updateEnvVariable(button: CaluculatorButton){
        if button == .plus {
            
        } else {
            self.displayValue = button.textTitle
        }
    }
}
