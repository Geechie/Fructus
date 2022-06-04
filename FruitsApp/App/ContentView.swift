//
//  ContentView.swift
//  FruitsApp
//
//  Created by Brandon Taylor on 6/3/22.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitData
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(fruits.shuffled()) { fruit in
                    
                    NavigationLink(
                        destination: FruitDetailView(fruit: fruit)) {
                            FruitRowView(fruit: fruit)
                                    .padding(.vertical, 4)
                    }
                }//MARK: End of NavigationLink
            
            } // MARK: End of ListView
            .navigationTitle("Fruits")
            
        } // MARK: End of NavigationView
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
