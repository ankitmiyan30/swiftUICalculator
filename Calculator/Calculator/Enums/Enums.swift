//
//  Enums.swift
//  Calculator
//
//  Created by Ankit on 18/08/20.
//  Copyright © 2020 Ankit. All rights reserved.
//

import SwiftUI

enum CaluculatorButton:String {
    case zero, one, two, three, four, five, six, seven, eight, nine, dot
    case equal, plus, minus, multi, divide
    case ac, plusminus, percentage
    
    var backgroundColor:Color {
        switch self {
        case .zero,.dot,.one,.two,.three,.four,.five,.six,.seven,.eight,.nine:
            return Color(.darkGray)
        case .ac,.plusminus,.percentage:
            return Color(.lightGray)
        default:
            return .orange
        }
    }
    
    var textTitle: String {
        switch self {
        case .zero:
            return "0"
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .plusminus:
            return "±"
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multi:
            return "x"
        case .divide:
            return "÷"
        case .dot:
            return "."
        case .equal:
            return "="
        case .percentage:
            return "%"
        default:
            return "AC"
        }
    }
}
