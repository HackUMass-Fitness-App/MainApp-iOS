//
//  WorkoutModel.swift
//  FitnessApp
//
//  Created by Larry Tseng on 10/19/19.
//  Copyright © 2019 FitnessApp. All rights reserved.
//

import Foundation

struct Workout {
    let exerciseType: ExerciseType
}

enum ExerciseType {
    case Curl
    case BenchPress
    case Lunge
    case PushUp
}
