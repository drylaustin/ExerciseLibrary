//
//  Exercise.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/26/23.
//

import Foundation

struct Exercise: Hashable, Codable, Identifiable {
   
    let bodyPart: String
    let equipment: String
    let gifUrl: String
    let id: String
    let name: String
    let target: String
   
}
