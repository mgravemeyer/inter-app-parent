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
    
    let userDefaults = UserDefaults(suiteName: "com.maximiliangravemeyer.inter-app.userdefaults")
    
    init() {
        userDefaults!.set("String" as String, forKey: "keyForString")
        userDefaults!.set(true as Bool, forKey: "keyForBool")
    }
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("UIPasteboard General")) {
                    Button("🔠 String") {
                        pasteboard.string = "String form parent"
                    }
                    Button("🖼 UIImage") {
                        pasteboard.image = UIImage(named: "testImage")
                    }
                }
                Section(header: Text("URL")) {
                    Button("🪄 URL") {
                        UIApplication.shared.open(URL(string: "inter-app-child://screen1?textSent=hi")!, options: [:], completionHandler: nil)
                    }
                }
            }.navigationTitle("SE_21 Parent")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
