//
//  RecipeModel.swift
//  Recipe List
//
//  Created by Donizetti de Souza on 5/9/24.
//

import Foundation

class RecipeModel: ObservableObject{
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        //let service = DataService() using stance more times use this way
        self.recipes = DataService.getLocalData()
        //print("Número de receitas: \(recipes.count)")
        
        // Set the recipes property
    }
}
