//
//  OnboardingView.swift
//  FruitsApp
//
//  Created by Brandon Taylor on 6/3/22.
//

import SwiftUI

struct OnboardingView: View {
//MARK: Properties
    
    var fruits: [Fruit]
    
    //MARK: Body
    
    var body: some View {
        
    TabView {
        
        ForEach (fruits[0..<4]) { fruit in
            FruitCardView(fruit: fruit)
        }

        } // MARK: TabView End
    .tabViewStyle(PageTabViewStyle())
    }
}


// MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
