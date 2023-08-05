//
//  FetchData.swift
//  ExerciseLibrary
//
//  Created by DARYL AGUSTIN on 7/26/23.
//

import Foundation

class apiCall {
    var exerciseRequest: ExerciseRequest? = nil
    
    // function for api call with musclePart parameter to display data by muscle
    
    func fetchdata(musclePart: String, completion:@escaping ([Exercise]) -> ()) {
        
        // Build your url
        
        let baseUrl = URL(string: urlValues.baseUrl)!

        let muscleKey = URLQueryItem(name: urlValues.muscleKeyName, value: musclePart)
        let apiKey = URLQueryItem(name: urlValues.apiKeyName, value: urlValues.apiKeyValue)

        let url = baseUrl.appending(queryItems: [
            muscleKey,
            apiKey
        ])

        let request = URLRequest(url: url)
        
        
        
        let task = URLSession.shared.dataTask(with: request) { (data, _, error) in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let exercises = try JSONDecoder().decode([Exercise].self, from: data)
                DispatchQueue.main.async {
                    completion(exercises)
                }
            }
            catch{
                print(error)
            }
        }
            task.resume()
    }
}
