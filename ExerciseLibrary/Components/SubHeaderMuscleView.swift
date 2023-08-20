//
//  SubHeaderMuscleView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 8/5/23.
//

import SwiftUI

struct SubHeaderMuscleView: View {
    var body: some View {
            Text("Select Muscle")
                .frame(maxWidth: .infinity, alignment: .bottomLeading)
                .font(.system(.title3, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .frame(height: 50)
    }
}

struct SubHeaderMuscleView_Previews: PreviewProvider {
    static var previews: some View {
        SubHeaderMuscleView()
            .previewLayout(.sizeThatFits)
    }
}
