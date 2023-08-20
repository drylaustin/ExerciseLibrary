//
//  EquipmentHeaderView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 8/17/23.
//

import SwiftUI

struct EquipmentHeaderView: View {
    var body: some View {
            Text("By Equipment")
                .frame(maxWidth: .infinity, alignment: .bottomLeading)
                .font(.system(.title3, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .frame(height: 50)
    }
}

struct EquipmentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
