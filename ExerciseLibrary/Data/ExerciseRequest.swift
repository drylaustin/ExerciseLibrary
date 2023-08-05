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

let urlValues = ExerciseRequest(baseUrl: "https://musclewiki.p.rapidapi.com/exercises",
                                muscleKeyName: "muscle",
                                apiKeyName: "rapidapi-key",
                                apiKeyValue: "insert your api key here")
