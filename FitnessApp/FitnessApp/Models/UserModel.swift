//
//  UserModel.swift
//  FitnessApp
//
//  Created by Larry Tseng on 10/19/19.
//  Copyright © 2019 FitnessApp. All rights reserved.
//

import Foundation

class User {
    let id: Int
    let name: String
    let workoutHistory: [Workout]
    
    init(id: Int, name: String, workoutHistory: [Workout]) {
        self.id = id
        self.name = name
        self.workoutHistory = workoutHistory
    }
}
