//
//  HeaderView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/31/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Spacer()
            Rectangle()
                .frame(width: 380, height: 50)
                .foregroundColor(.white)               
            
            Text("What are you training today?")
                .frame(width: 350, height: 80, alignment: .leading)
                .font(.system(.title3, weight: .bold))
//                .foregroundColor(.white)
                .padding(.leading, 10)
                        
                }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
