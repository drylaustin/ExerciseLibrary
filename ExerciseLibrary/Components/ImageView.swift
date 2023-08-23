//
//  ImageView.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 8/23/23.
//

import SwiftUI

struct ImageView: View {
    let urlString: String
    
    @State var data: Data?
    
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 90)
               
        }
        else
        {
            Image(systemName: "video")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
            
                .onAppear() {
                    fetchImage()
                }
        }
    }
    
    private func fetchImage() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        task.resume()
    }
}
    
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(urlString: "")
    }
}
