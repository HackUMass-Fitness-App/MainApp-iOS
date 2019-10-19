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
            Button(action: {
                print("select workout")
            }) {
                Text("Select Workout")
            }
        
            .navigationBarTitle("Hi, Anthony.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
