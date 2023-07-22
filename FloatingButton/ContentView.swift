//
//  ContentView.swift
//  FloatingButton
//
//  Created by Joseph Langat on 22/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                    NavigationStack {
                        // 1
                        ZStack {

                            List(0..<100) { i in
                                Text("Item \(i)")
                            }
                            .navigationTitle("Home")
                            // 2
                            Button {

                                // Action
                            } label: {
                                Image(systemName: "plus")
                            }
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
