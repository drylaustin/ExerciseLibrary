//
//  ExerciseRequest.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/30/23.
//

import Foundation
import SwiftUI

struct ExerciseRequest: Codable, Hashable {
    
    let baseUrl: String
    let muscleKeyName: String
    let apiKeyName: String
    let apiKeyValue: String
    
}

let urlValues = ExerciseRequest(baseUrl: "https://exercisedb.p.rapidapi.com/exercises",
                                muscleKeyName: "muscle",
                                apiKeyName: "rapidapi-key",
                                apiKeyValue: "8213f312c7msh7c74016e92a8133p116f5djsnd6850f58cbae")
