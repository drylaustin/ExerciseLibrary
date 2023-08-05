//
//  MuscleView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/28/23.
//

import SwiftUI

struct MuscleView: View {
    
    let columns = [
    GridItem(.flexible()), GridItem(.flexible())
    ]

    @State private var selectedMuscle: Muscle? = nil
   
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                // Image at top of this scrollview
                SubHeaderMuscleView()
                
                // Dislplay muscle group by 2 columns
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(muscles) { muscle in NavigationLink(destination: ExerciseView(muscle: muscle)) {
                        TargetMuscle(muscle: muscle)
                            .onTapGesture {
                                self.selectedMuscle = muscle
                            }
                        }
                    }
                }
            }
            
        }
            .fullScreenCover(item: $selectedMuscle) { muscle in
                ExerciseView(muscle: muscle)}
           

        }
        
    }
    struct TargetMuscle: View {
        var muscle: Muscle
        
        var body: some View {
            
            // Appearance of each muscle choice
            
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.white)
                    .frame(width: 160, height: 200)
                
                VStack {
                    Image(muscle.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 90)
                        .cornerRadius(5)
                        .background(Color.indigo.opacity(0.7))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .padding(30)
                    Text(muscle.bodyPart)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                }
            }
            .cornerRadius(5)
            .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.black, lineWidth: 0.1)
                )
            
            .padding()
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 4)
        }
    }

struct MuscleView_Previews: PreviewProvider {
    static var previews: some View {
        MuscleView()
    }
}
