//
//  CardioHeaderView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 8/20/23.
//

import SwiftUI

struct CardioHeaderView: View {
    var body: some View {
            Text("Cardio")
                .frame(maxWidth: .infinity, alignment: .bottomLeading)
                .font(.system(.title3, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .frame(height: 50)
    }
}

struct CardioHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CardioHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
