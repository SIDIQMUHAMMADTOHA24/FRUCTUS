//
//  SettingView.swift
//  Fructus
//
//  Created by sidiqtoha on 04/08/24.
//

import SwiftUI

struct SettingView: View {
    
    //MARK: - PROPERTIES
    
    @Environment(\.dismiss) var dismis
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack {
                    
                    //SELECTION 1
                    GroupBox(content: {
                        Divider().padding(.vertical, 4)
                        
                        HStack(content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(.rect(cornerRadius: 9))
                            Text("Most Fruit are naturally lo in fat, sodium, and calories. None have cholestrol. Fruits are sources on many essential nutrients, including potassium, dietary fiber, vitamins and much more. ")
                                .font(.footnote)
                        })
                    }, label: {
                        SettingLabelView(
                        labelText: "Fructus", labelImage: "info.circle"
                        )
                    })
                    .padding(.bottom, 10)
                    
                    //SELECTION 2
                    GroupBox(content: {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .font(.footnote)
                            .frame(minHeight: 60)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding, label: {
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.secondary)
                            }
                        })
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }, label: {
                        SettingLabelView(
                        labelText: "Customization", labelImage: "paintbrush"
                        )
                    })
                    .padding(.bottom, 10)
                    
                    
                    //SELECTION 3
                    GroupBox( content: {
                        SettingRowView(name: "Developer", content: "Sidiq Muhammad Toha")
                        SettingRowView(name: "Designer", content: "Robert Petras")
                        SettingRowView(name: "Compatibility", content: "IOS 17.6")
                        SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingRowView(name: "Linkedin", linkLabel: "Sidiq Muhammad Toha", linkDestination: "www.linkedin.com/in/sidiq-muhammad-toha-60747a1b7/")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                    }, label: {
                        SettingLabelView(
                        labelText: "Aplication", labelImage: "apps.iphone"
                        )
                    })
                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .padding()
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing, content: {
                        Button(action: {
                            dismis()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                    })
                }
            })
        }//: NAVIGATION STACK
    }
}

#Preview {
    SettingView()
}
