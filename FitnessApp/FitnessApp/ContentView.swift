//
//  ContentView.swift
//  FitnessApp
//
//  Created by Larry Tseng on 10/19/19.
//  Copyright © 2019 FitnessApp. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            //Text("Hello World")
            VStack {
                
                Button(action: {
                    print("select workout")
                }) {
                    Text("Select Workout")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .font(.title)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(100)
                }
                .padding(.horizontal, 15)
            }
            .navigationBarTitle("Hi, Anthony.")
            .navigationBarItems(trailing:
                Button(action: {
                    print("settings")
                }) {
                    Image(systemName: "gear")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
