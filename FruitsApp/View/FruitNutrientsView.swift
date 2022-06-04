//
//  FruitNutrientsView.swift
//  FruitsApp
//
//  Created by Brandon Taylor on 6/4/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    //MARK: Properties
    var fruit: Fruit
    
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    
    //MARK: Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { nutrient in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[nutrient])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[nutrient])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            // MARK: End of DisclosureGroup
    
        }
        //MARK: End of GroupBox
    }
}


//MARK: Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
