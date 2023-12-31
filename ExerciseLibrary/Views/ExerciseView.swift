//
//  ExerciseView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/28/23.
//

import SwiftUI

struct ExerciseView: View {
    @State var exercises: [Exercise] = []
    @State private var selectedExercise: Exercise? = nil
    
    // For back button
    @Environment(\.dismiss) var dismiss
    
    var muscle: Category
    
    var body: some View {
        
        NavigationView {
            List(exercises.prefix(20)) { exercise in
                ZStack(alignment: .leadingFirstTextBaseline) {
                    
                    // Show Details when clicked
                    NavigationLink(destination: ExerciseDetailView(exerciseItem: exercise)) {
                    }
                    .opacity(0.0)
                    HStack {
                        ImageView(urlString: exercise.gifUrl)
                        Text(exercise.name)
                    }
                            .bold()
                    }
                }
            .navigationTitle("Exercise Library")
            .navigationBarTitleDisplayMode(.inline)
            
            // Back Button
            .navigationBarItems(
                    leading: Button {
                        dismiss()
                            } label: {
                                    Image(systemName: "arrowshape.left.fill")
                                    .foregroundColor(.indigo)
                            }
                    )
            
            // Calls to display exercises by bodypart
            .onAppear {
                apiCall().fetchdata(musclePart: muscle.exerciseType) { (exercises) in
                    self.exercises = exercises
                }
            }
            .sheet(item: $selectedExercise, content: { exercise in
                            ExerciseDetailView(exerciseItem: exercise)
                        })
          
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(muscle: Category(image: "workout", exerciseType: "Chest"))
    }
}
