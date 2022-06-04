//
//  HomeButton.swift
//  FruitsApp
//
//  Created by Brandon Taylor on 6/4/22.
//

import SwiftUI

struct HomeButton: View {
    
    //MARK: Properties
    
    
    
    //MARK: Body
    
    var body: some View {
        
         Button(action: {
           //  OnboardingView(fruits:fruitData)
         }, label: {
             HStack (spacing: 8) {
                 
                 Image(systemName: "chevron.backward.circle")
                     .imageScale(.large)
                 
                 Text("Home")
                    
             }
             .padding(.horizontal, 16)
             .padding(.vertical, 10)
             .background(
                 Capsule()
                     .strokeBorder(Color.white, lineWidth: 1.50)
             )
             
             
             
         }) // MARK: Button
             .accentColor(.white)
             .background(
                 Capsule()
                     .strokeBorder(Color.white, lineWidth: 1.25)
             )
        
         
    
    
    
    }
}


//MARK: Preview
struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
