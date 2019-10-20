//
//  MainBodyView.swift
//  FitnessApp
//
//  Created by Larry Tseng on 10/19/19.
//  Copyright © 2019 FitnessApp. All rights reserved.
//

import SwiftUI

struct MainBodyView: View {
    
    public var user = User(
        id: 12345,
        name: "Anthony",
        workoutHistory: [
            Workout(id: 0, exerciseType: .Curl),
            Workout(id: 1, exerciseType: .BenchPress)])
    
    
    var body: some View {
        VStack {
            ScrollView {
                CardUI({
                    Text("Stats")
                })
            }
//            List (users.workoutHistory){
//                Text($0.)
//            }
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
            .padding()
        }
    }
}

struct MainBodyView_Previews: PreviewProvider {
    static var previews: some View {
        MainBodyView()
    }
}
