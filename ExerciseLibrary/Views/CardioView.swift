//
//  CardioView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 8/17/23.
//

import SwiftUI

struct CardioView: View {
    @State private var selectedMuscle: Category? = nil
   
    var body: some View {
       
        NavigationView {
           
            ZStack {
                Color.black.opacity(0.9)
                    .ignoresSafeArea()
                VStack {
                    CardioHeaderView()
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(cardio) { muscle in NavigationLink(destination: ExerciseView(muscle: muscle)) {
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
   

struct TargetCardio: View {
    var cardio: Category
    
    var body: some View {
        
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 90, height: 90)
                                .background(Color.black)
                            .overlay(

            Image(cardio.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
             )
                            .padding(.bottom, 10)
                    
                
            Text(cardio.exerciseType)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 170, alignment: .leading)
                .padding(.bottom, 10)
        }

        .padding(10)
    }
}


struct CardioView_Previews: PreviewProvider {
    static var previews: some View {
        CardioView()
            .previewLayout(.sizeThatFits)
    }
}
