//
//  FruitDetailView.swift
//  FruitsApp
//
//  Created by Brandon Taylor on 6/4/22.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: Properties
    
    var fruit: Fruit
    
    
    //MARK: Body
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .center, spacing: 20) {
                            
                            //: Header
                            FruitHeaderView(fruit:fruit)
                            
                            VStack (alignment: .leading, spacing: 20) {
                            //: Title
                            Text(fruit.title)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(fruit.gradientColors[1])
                                
                            //: Headline
                                Text(fruit.headline)
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                
                            //: Nutrients
                                FruitNutrientsView(fruit: fruit)
                            
                            //: Subheadline
                                Text("Learn more about \(fruit.title)".uppercased())
                                    .foregroundColor(fruit.gradientColors[1])
                            
                            //: Description
                                Text(fruit.description)
                                    .multilineTextAlignment(.leading)
                                
                            //: Link
                                SourceLinkView()
                                    .padding(.top, 10)
                                    .padding(.bottom, 40)
                                
                        }
                        //: End of Inner VStack
                        .padding(.horizontal, 20)
                        .frame(maxWidth: 640, alignment: .center)
                    }
                    //: End of Outer VStack
                    .navigationBarTitle(fruit.title, displayMode: .inline)
                    .navigationBarHidden(true)
                
            }
            .edgesIgnoringSafeArea(.top)
            //:End of ScrollView
        }
        //: End of Navigation
    }
}


//MARK: Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
                FruitDetailView(fruit: fruitData[0])
                    .previewDevice("iPhone 11 Pro")
    }
}
