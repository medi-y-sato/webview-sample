//
//  ContentView.swift
//  Shared
//
//  Created by y-sato on 2021/06/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WebView(loadUrl: "https://google.com")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
