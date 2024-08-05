//
//  FruitDetailView.swift
//  Fructus
//
//  Created by sidiqtoha on 03/08/24.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .center, spacing: 20, content: {
                    //HEADER
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNurientView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased(with: .autoupdatingCurrent))
                            .foregroundStyle(fruit.gradientColors[1])
                            .fontWeight(.bold)
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    })//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                })//: VSTACK
                
            })//: SCROLL VIEW
            .ignoresSafeArea(edges: .top)
        }//: NAVIGATION STACK
    }
}

#Preview {
    FruitDetailView(fruit: fruitData[0])
}
