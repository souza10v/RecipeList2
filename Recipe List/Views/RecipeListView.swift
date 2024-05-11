//
//  ContentView.swift
//  Recipe List
//
//  Created by Donizetti de Souza on 5/9/24.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model: RecipeModel // aponta para .environmentObject(RecipeModel())
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink {
                    RecipeDetailView(recipe: r)
                } label: {
                    HStack(spacing: 20){
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                }

                
            }
            .navigationBarTitle("Todas as receitas")
        }
    }
}

#Preview {
    RecipeListView()
}


