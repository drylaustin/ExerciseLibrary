//
//  Exercise.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/26/23.
//

import Foundation

struct Exercise: Hashable, Codable, Identifiable {
    let id: Int
    let exercise_name: String
    let videoURL: [String]
    let steps: [String]
   
}
