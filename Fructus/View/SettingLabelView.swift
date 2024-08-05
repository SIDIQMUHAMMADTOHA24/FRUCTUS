//
//  SettingLabelView.swift
//  Fructus
//
//  Created by sidiqtoha on 04/08/24.
//

import SwiftUI

struct SettingLabelView: View {
    
    //MARK: PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    GroupBox {
        SettingLabelView(
        labelText: "Fructus", labelImage: "info.circle"
        )
    }
    .padding()
}
