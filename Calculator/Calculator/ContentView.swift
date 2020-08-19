//
//  ContentView.swift
//  Calculator
//
//  Created by Ankit on 18/08/20.
//  Copyright © 2020 Ankit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var envObj : GlobleEnvironment
    let buttonsArray: [[CaluculatorButton]] = [[.ac,.plusminus,.percentage,.divide],[.seven,.eight,.nine,.multi],[.four,.five,.six,.minus],[.one,.two,.three,.plus],[.zero,.dot,.equal]]
    var body: some View {
        ZStack (alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack (spacing: 12){
                HStack{
                    Spacer()
                    Text(envObj.displayValue).foregroundColor(.white)
                        .font(.system(size: 50))
                    .padding(20)
                }
                ForEach(buttonsArray, id: \.self){row in
                    HStack (spacing: 12) {
                        ForEach(row, id: \.self) { button  in
                            CalculatorButtonView(button: button)
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobleEnvironment())
    }
}
