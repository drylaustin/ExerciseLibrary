//
//  Muscle.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/28/23.
//

import Foundation

struct Muscle: Identifiable, Codable, Hashable {
    var id = UUID()
    var image: String
    var bodyPart: String
    
  }

// Data for Muscle View

let muscles = [Muscle(image: "biceps", bodyPart: "Biceps"),
               Muscle(image: "forearms", bodyPart: "Forearms"),
               Muscle(image: "triceps", bodyPart: "Triceps"),
               Muscle(image: "chest", bodyPart: "Chest"),
               Muscle(image: "shoulders", bodyPart: "Shoulders"),
               Muscle(image: "back", bodyPart: "Lats"),
               Muscle(image: "quads", bodyPart: "Quads"),
               Muscle(image: "glutes", bodyPart: "Glutes"),
               Muscle(image: "calves", bodyPart: "Calves"),
               Muscle(image: "hamstring", bodyPart: "Hamstrings"),
               Muscle(image: "abs", bodyPart: "Abdominals"),
               Muscle(image: "obliques", bodyPart: "Obliques")]
    

