//
//  MuscleView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/28/23.
//

import SwiftUI

struct MuscleView: View {
    
  
    @State private var selectedMuscle: Category? = nil
   
    var body: some View {
       
        NavigationView {
           
            ZStack {
                Color.black.opacity(0.9)
                    .ignoresSafeArea()
                VStack {
                    SubHeaderMuscleView()
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
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
            }
        }
        .frame(height: 300)

            .fullScreenCover(item: $selectedMuscle) { muscle in
                ExerciseView(muscle: muscle)}
           
            
    }
        
        
        
    }
   

struct TargetMuscle: View {
    var muscle: Category
    
    var body: some View {
        
        VStack {
            Image(muscle.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 170, height: 170)
                .cornerRadius(5)
                .background(Color.gray)
                .padding(.bottom, 10)
                
            Text(muscle.exerciseType)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 170, alignment: .leading)
                .padding(.bottom, 10)
        }

        .padding(10)
    }
}

struct MuscleView_Previews: PreviewProvider {
    static var previews: some View {
        MuscleView()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
