//
//  ContentView.swift
//  satucak
//
//  Created by addin on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      WebView(url: URL(string: "https://1cak.com"))
        .edgesIgnoringSafeArea([.bottom, .horizontal])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
