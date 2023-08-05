//
//  ContentView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/25/23.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        // Display Header
        HeaderView()
        // Display Muscle Columns
        MuscleView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
