//
//  ContentView.swift
//  Fructus
//
//  Created by sidiqtoha on 02/08/24.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    @State private var isShowingSetting: Bool = false
    
    var fruit: [Fruit] = fruitData
    
    var body: some View {
            NavigationStack {
                List {
                    ForEach(fruit.shuffled()) { item in
                        NavigationLink(destination: FruitDetailView(fruit: item), label: {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                        })
                        .listRowSeparator(.visible)
                    }
                }
                .listStyle(PlainListStyle()) // Menggunakan gaya list tanpa tambahan padding atau latar belakang
                .background(Color.white)
                .navigationTitle("Fruits")
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing, content: {
                        Button(action: {
                            isShowingSetting = true
                        }, label: {
                            Image(systemName: "slider.horizontal.3")
                        })
                        .sheet(isPresented: $isShowingSetting, content: {
                            SettingView()
                        })
                    })
                }
            }//: NAVIGATION STACK
        }
}

#Preview {
    ContentView()
}
