//
//  Recipe_ListApp.swift
//  Recipe List
//
//  Created by Donizetti de Souza on 5/9/24.
//

import SwiftUI

@main
struct Recipe_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ReceipeTabView()
                //.environmentObject(RecipeModel())
        }
    }
}
