//
//  OnboardingView.swift
//  FruitsApp
//
//  Created by Brandon Taylor on 6/3/22.
//

import SwiftUI

struct OnboardingView: View {
//MARK: Properties
    
    
    //MARK: Body
    
    var body: some View {
        
    TabView {
        
        ForEach (0..<5) { item in
            FruitCardView()
            
        }

        } // MARK: TabView End
    .tabViewStyle(PageTabViewStyle())
    }
}


// MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
