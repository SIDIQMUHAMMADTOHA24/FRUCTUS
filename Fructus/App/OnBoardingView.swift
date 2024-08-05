//
//  OnBoardingView.swift
//  Fructus
//
//  Created by sidiqtoha on 02/08/24.
//

import SwiftUI

struct OnBoardingView: View {
    
    //MARK: - PROPERTIES
    
    
    var fruits: [Fruit] = fruitData
    
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

    //MARK: - PREVIEW
#Preview {
    OnBoardingView()
}
