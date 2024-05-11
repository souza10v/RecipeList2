//
//  ReceipeTabView.swift
//  Recipe List
//
//  Created by Donizetti de Souza on 5/10/24.
//

import SwiftUI

struct ReceipeTabView: View {
    
    var body: some View {
        
        TabView {
            
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image (systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        .environmentObject(RecipeModel())
    }
}

#Preview {
    ReceipeTabView()
}
