//
//  SubHeaderMuscleView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 8/5/23.
//

import SwiftUI

struct SubHeaderMuscleView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Spacer()
            Rectangle()
                .frame(width: 370, height: 160)
                .foregroundColor(.indigo)
                .opacity(0.7)
                .cornerRadius(20)
            HStack {
                Text("Select a muscle \nto load exercises")
                    .frame(width: 200, height: 100, alignment: .leading)
                    .font(.system(.title2, weight: .bold))
                    .foregroundColor(.white)
                    .fixedSize(horizontal: false, vertical: true)
                Image("workout")
                    .resizable()
                    .frame(width: 110, height: 110)
                
            }
        }
        .cornerRadius(20)
        .overlay(
        RoundedRectangle(cornerRadius: 20)
            .stroke(.black, lineWidth: 0.1)
            )
        .padding()
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 4)
    }
       

}

struct SubHeaderMuscleView_Previews: PreviewProvider {
    static var previews: some View {
        SubHeaderMuscleView()
    }
}
