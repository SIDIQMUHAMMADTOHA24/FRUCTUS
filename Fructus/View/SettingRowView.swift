//
//  SettingRowView.swift
//  Fructus
//
//  Created by sidiqtoha on 05/08/24.
//

import SwiftUI

struct SettingRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack(content: {
                Text(name)
                    .foregroundStyle(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
                } else {
                    EmptyView()
                }
            })//: HSTACK
        }//: VSTACK
    }
}

#Preview {
    GroupBox {
        SettingRowView(name: "Developer", content: "Sidiq Muhammad Toha")
    }
    .padding()
}
