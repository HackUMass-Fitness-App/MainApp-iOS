//
//  MainBodyView.swift
//  FitnessApp
//
//  Created by Larry Tseng on 10/19/19.
//  Copyright © 2019 FitnessApp. All rights reserved.
//

import SwiftUI

struct MainBodyView: View {
    
    @ObservedObject public var user = User(
        id: 12345,
        name: "Anthony",
        workoutHistory: [
            Workout(exerciseType: .Curl),
            Workout(exerciseType: .BenchPress)])
    
    var body: some View {
        VStack {
            ScrollView {
                CardUI({
                    Text("Stats")
                })
                CardUI({
//                    List(user.workoutHistory) { item in
//
//                    }
                    Text("History")
                })
            }
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
    }
}

struct MainBodyView_Previews: PreviewProvider {
    static var previews: some View {
        MainBodyView()
    }
}
