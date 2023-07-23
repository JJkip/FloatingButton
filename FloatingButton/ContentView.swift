//
//  ContentView.swift
//  FloatingButton
//
//  Created by Joseph Langat on 22/07/2023.
//

import SwiftUI

struct ContentView: View {
    let gradient = LinearGradient(colors: [.pink, .purple], startPoint: .leading, endPoint: .trailing)
    let text2 = "List"
    var body: some View {
        TabView {
                    NavigationStack {
                        // 1
                        ZStack(alignment: .bottomTrailing) {

                            List(0..<100) { i in
                                Text("Item \(i)")
                            }
                            .navigationTitle("Home")
                            Text("All, \(text2).foreg")
                                .bold()
                                .font(.title)
                                .textCase(.uppercase)
                            // 2
                            Button {

                                // Action
                            } label: {
                                Image(systemName: "plus")
                                    .font(.title.weight(.semibold))
                                    .padding()
                                    .background(Color.purple)
                                    .foregroundColor(.white)
                                    .clipShape(Circle())
                                    .shadow(radius: 4, x: 0, y: 4)
                            }
                            .padding()
                        }
                    }
                    .tabItem {
                        Label("Home", systemImage: "house")
                        
                    }
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
