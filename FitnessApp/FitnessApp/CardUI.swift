//
//  CardUI.swift
//  FitnessApp
//
//  Created by Larry Tseng on 10/19/19.
//  Copyright © 2019 FitnessApp. All rights reserved.
//

import SwiftUI

struct CardUI<C: View>: View {
    let innerView: C
    
    init(_ innerView: () -> (C)) {
        self.innerView = innerView()
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer().frame(height: 50)
            HStack() {
                Spacer()
                Text("Hello")
                innerView
                Spacer()
            }
            Spacer().frame(height: 50)
        }
        .background(Color.red)
        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

struct CardUI_Previews: PreviewProvider {
    static var previews: some View {
        CardUI {
            Text("Hi")
        }
    }
}
