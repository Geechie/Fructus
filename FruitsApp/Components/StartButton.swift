//
//  StartButtonView.swift
//  FruitsApp
//
//  Created by Brandon Taylor on 6/3/22.
//

import SwiftUI

struct StartButton: View {
    
    // MARK: Properties
    @AppStorage ("isOnboarding") var isOnboarding: Bool?
    
    
    //MARK: Body
    
    
    var body: some View {
       
        Button(action: {
            isOnboarding = false 
        }, label: {
            HStack (spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                   
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
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
