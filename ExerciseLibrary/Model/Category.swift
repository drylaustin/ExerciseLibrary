//
//  Muscle.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/28/23.
//

import Foundation

struct Category: Identifiable, Codable, Hashable {
    var id = UUID()
    var image: String
    var exerciseType: String
    
  }

// Data for Muscle View

let muscles = [Category(image: "biceps", exerciseType: "Biceps"),
               Category(image: "forearms", exerciseType: "Forearms"),
               Category(image: "triceps", exerciseType: "Triceps"),
               Category(image: "chest", exerciseType: "Chest"),
               Category(image: "shoulders", exerciseType: "Shoulders"),
               Category(image: "back", exerciseType: "Lats"),
               Category(image: "quads", exerciseType: "Quads"),
               Category(image: "glutes", exerciseType: "Glutes"),
               Category(image: "calves", exerciseType: "Calves"),
               Category(image: "hamstrings", exerciseType: "Hamstrings"),
               Category(image: "abs", exerciseType: "Abdominals"),
               Category(image: "obliques", exerciseType: "Obliques")]
    
// Data for Equipments

let equipments = [Category(image: "barbell", exerciseType: "Barbell"),
                  Category(image: "bodyweight", exerciseType: "Body weight"),
                  Category(image: "cable", exerciseType: "Cable"),
                  Category(image: "weighted", exerciseType: "Weighted"),
                  Category(image: "dumbbell", exerciseType: "Dumbbell"),
                  Category(image: "kettlebell", exerciseType: "Kettlebell"),
                  Category(image: "band", exerciseType: "Band"),
                  Category(image: "smithmachine", exerciseType: "Smith machine"),
                  Category(image: "stabilityball", exerciseType: "Stability ball"),
                  Category(image: "medicineball", exerciseType: "Medicine ball"),
                  Category(image: "resitanceband", exerciseType: "Resistance band"),
                  Category(image: "bosuball", exerciseType: "Bosu ball")]


// Data for Cardio

let cardio = [Category(image: "cardiobodyweight", exerciseType: "Bodyweight"),
                  Category(image: "leveragemachine", exerciseType: "Leverage machine"),
                  Category(image: "cable", exerciseType: "Rope"),
                  Category(image: "stationarybike", exerciseType: "Stationary bike"),
                  Category(image: "elliptical", exerciseType: "Elliptical machine"),
                  Category(image: "cardiomachine", exerciseType: "Stepmill machine"),
                  Category(image: "dbcardio", exerciseType: "Dumbbell")]
