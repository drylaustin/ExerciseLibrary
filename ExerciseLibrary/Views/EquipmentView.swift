//
//  EquipmentView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 8/17/23.
//

import SwiftUI

import SwiftUI

struct EquipmentView: View {
    
  
    @State private var selectedMuscle: Category? = nil
   
    var body: some View {
       
        NavigationView {
           
            ZStack {
                Color.black.opacity(0.9)
                    .ignoresSafeArea()
                VStack {
                    EquipmentHeaderView()
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(equipments) { equipment in NavigationLink(destination: ExerciseView(muscle: equipment)) {
                                TargetMuscle(muscle: equipment)
                                    .onTapGesture {
                                        self.selectedMuscle = equipment
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
   

struct TargetEquipment: View {
    var equipment: Category
    
    var body: some View {
        
        VStack {
            Image(equipment.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 170, height: 170)
                .cornerRadius(5)
                .background(Color.gray)
                .padding(.bottom, 10)
                
            Text(equipment.exerciseType)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 170, alignment: .leading)
                .padding(.bottom, 10)
        }

        .padding(10)
    }
}

struct EquipmentView_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentView()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
