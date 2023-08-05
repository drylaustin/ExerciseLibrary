//
//  ExerciseDetailView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/26/23.
//

import SwiftUI
import AVKit

struct ExerciseDetailView: View {
    
    @State private var videoURL: String?
    
    @Environment(\.dismiss) var dismiss
    
    let exerciseItem: Exercise
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                // Displaye Video
                VideoPlayer(player: AVPlayer(url: URL(string: exerciseItem.videoURL[0])!), videoOverlay: {
                    Spacer()
                })
                .frame(width: 400, height: 220, alignment: .center)
                
                ZStack(alignment: .top) {
                    RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .frame(width: 400, height: 600 )
                    VStack(alignment: .leading) {
                        
                        // Exercise name
                        Text(exerciseItem.exercise_name)
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .bold()
                            .padding()
                        
                        // Exercise instructions
                        ForEach(exerciseItem.steps, id: \.self) { step in
                            Text(step)
                                .font(.body)
                                .padding()
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
            }
        }

        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        
        // X close button
        .navigationBarItems(
                trailing: Button {
                    dismiss()
                        } label: {
                                Image(systemName: "xmark")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                )
        .background(Color.black)
        
    }
      
}


