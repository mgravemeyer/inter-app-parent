//
//  ContentView.swift
//  inter-app-parent
//
//  Created by Maximilian Gravemeyer on 25.05.21.
//

import SwiftUI
import MobileCoreServices

struct ContentView: View {

    let pasteboard = UIPasteboard.general
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("UIPasteboard General")) {
                    Button("Pasteboard -> String") {
                        pasteboard.string = "String form parent"
                    }
                    Button("Pasteboard -> UIImage") {
                        pasteboard.image = UIImage(named: "testImage")
                    }
                }
            }.navigationTitle("SE_21")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
