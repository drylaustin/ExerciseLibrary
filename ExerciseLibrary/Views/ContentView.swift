//
//  ContentView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/25/23.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.9)
                .ignoresSafeArea()
            
            VStack {
            // Display Header
            HeaderView()
                   
                ScrollView {
                    // Display Muscle
                    MuscleView()
                    EquipmentView()
                    CardioView()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
