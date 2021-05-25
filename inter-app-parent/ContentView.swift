//
//  ContentView.swift
//  inter-app-parent
//
//  Created by Maximilian Gravemeyer on 25.05.21.
//

import SwiftUI
import MobileCoreServices

struct ContentView: View {
    
    let pasteboard = UIPasteboard(name: UIPasteboard.Name(rawValue: "com.maximiliangravemeyer.inter-app-parent.pasteboard"), create: true)
    
    var body: some View {
        VStack {
            Button("Pasteboard -> hello string!") {
                pasteboard!.setValue("hello string!", forPasteboardType: kUTTypePlainText as String)
            }
            Button("Pasteboard -> form parent app!!") {
                pasteboard!.setValue("from parent app!", forPasteboardType: kUTTypePlainText as String)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
