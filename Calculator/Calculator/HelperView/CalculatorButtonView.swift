//
//  CalculatorButtonView.swift
//  Calculator
//
//  Created by Ankit on 18/08/20.
//  Copyright © 2020 Ankit. All rights reserved.
//

import SwiftUI

struct CalculatorButtonView: View {
    var button: CaluculatorButton
    @EnvironmentObject var envObj : GlobleEnvironment
    var body: some View {
        Button(action: {
            self.envObj.updateEnvVariable(button: self.button)
        }) {
            Text(button.textTitle)
            .font(.system(size: 32))
            .frame(width: self.buttonWidth(button: button), height: (UIScreen.main.bounds.width - 5 * 12) / 4)
            .foregroundColor(.white)
            .background(button.backgroundColor)
            .cornerRadius(self.buttonWidth(button: button))
        }
    }
    
    private func buttonWidth(button: CaluculatorButton)->CGFloat{
        if button == .zero {
            return (UIScreen.main.bounds.width - 4 * 12) / 2
        }
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
    
}
