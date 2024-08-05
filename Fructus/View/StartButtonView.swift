//
//  StartButtonView.swift
//  Fructus
//
//  Created by sidiqtoha on 02/08/24.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: - PROPERTIES
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            isOnBoarding = false
        }, label: {
            HStack(spacing: 8, content: {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            })
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().stroke(.white, lineWidth: 1.25)
            )
            
        })//: BUTTON
        .tint(.white)
    }
}
    
    //MARK: - PREVIEW
#Preview {
    StartButtonView()
}
