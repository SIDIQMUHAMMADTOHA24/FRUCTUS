//
//  FruitRowView.swift
//  Fructus
//
//  Created by sidiqtoha on 03/08/24.
//

import SwiftUI

struct FruitRowView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    var body: some View {
        HStack{
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .clipShape(.rect(cornerRadius: 8))
            VStack(alignment: .leading, spacing: 5,  content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            })//: VSTACK
            
        }//: HSTACK
    }
}

#Preview {
    FruitRowView(
    fruit: fruitData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
