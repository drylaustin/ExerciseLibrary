//
//  HeaderView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/31/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
            Text("What are you training today?")
                .frame(width: 360, height: 50, alignment: .leading)
                .font(.system(.title2, weight: .bold))
                .foregroundColor(.white)
                .padding(15)
                }
     
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}


