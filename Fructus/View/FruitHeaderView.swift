//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by sidiqtoha on 03/08/24.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //MARK: PROPERTIES
    
    var fruit: Fruit
    
    @State private var isAnimationImage: Bool = false
    
    var body: some View {
        ZStack(content: {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 6)
                .padding(.vertical, 20)
                .scaleEffect(isAnimationImage ? 1.0 : 0.6)
            
        })//: ZSTACK
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5), {
                isAnimationImage = true
            })
        })
        
    }
}

#Preview {
    FruitHeaderView(fruit: fruitData[0])
}
