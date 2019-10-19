//
//  ContentView.swift
//  FitnessApp
//
//  Created by Larry Tseng on 10/19/19.
//  Copyright © 2019 FitnessApp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var user = User(
        id: 12345,
        name: "Anthony",
        workoutHistory: [
            Workout(exerciseType: .Curl),
            Workout(exerciseType: .BenchPress)])

    var body: some View {
        NavigationView {
            ScrollView {
                Button(action: {
                    print("select workout")
                }) {
                    Text("Select Workout")
                }
                .padding(.bottom)
                    
                .navigationBarTitle("Hi, \(user.name)")
                .navigationBarItems(
                    trailing: Button(action: {}) {
                        Text("Gear")
                    }.padding(.top, 90)
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
