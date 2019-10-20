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
    
    let background: Color
    let cornerRadius: CGFloat
    let padding: Bool
    
    init(_ innerView: () -> (C), _ background: Color = .white, _ cornerRad: CGFloat = 10, _ padding: Bool = true) {
        self.innerView = innerView()
        self.background = background
        self.cornerRadius = cornerRad
        self.padding = padding
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer().frame(height: 50)
            HStack() {
                Spacer()
                innerView
                Spacer()
            }
            Spacer().frame(height: 50)
        }
        .background(self.background)
        .cornerRadius(self.cornerRadius)
        .padding(.all, self.padding ? nil : 0)
    }
}

struct CardUI_Previews: PreviewProvider {
    static var previews: some View {
        CardUI({
            Text("Hello")
        }, .red, 10, true)
    }
}
