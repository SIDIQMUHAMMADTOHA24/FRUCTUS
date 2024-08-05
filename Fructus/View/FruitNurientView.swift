//
//  FruitNurientView.swift
//  Fructus
//
//  Created by sidiqtoha on 03/08/24.
//

import SwiftUI

struct FruitNurientView: View {
    
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    var nutrition: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox(content: {
            DisclosureGroup("Nutritional value per 100g", content: {
                ForEach(0..<nutrition.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrition[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            })
        })
    }
}

#Preview {
    FruitNurientView(fruit: fruitData[0])
        .padding()
}
