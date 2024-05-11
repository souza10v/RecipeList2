//
//  DataService.swift
//  Recipe List
//
//  Created by Donizetti de Souza on 5/9/24.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // Parse local Json file
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // check if pathstring is not nil, otherwise
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a Json decoder
            let decoder = JSONDecoder()
            
            do {
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add unique IDs
                for r in recipeData {
                    r.id = UUID()
                    
                    // Add unique IDs to ingredients
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                // Return the recipes
                return recipeData
                
            } catch {
                // error parsing json
                print(error)
            }
        }
        catch {
            // error getting data
            print(error)
        }
        return [Recipe]()

    }
}
