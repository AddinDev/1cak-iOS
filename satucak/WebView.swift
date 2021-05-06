//
//  WebView.swift
//  satucak
//
//  Created by addin on 06/05/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
  
  let url: URL?
  
  func makeUIView(context: Context) -> WKWebView {
    let prefs = WKWebpagePreferences()
    prefs.allowsContentJavaScript = true
    let config = WKWebViewConfiguration()
    config.defaultWebpagePreferences = prefs
    return WKWebView(frame: .zero,
                     configuration: config)
  }
  
  func updateUIView(_ uiView: WKWebView, context: Context) {
    guard let url = url else { return }
    let request = URLRequest(url: url)
    uiView.load(request)
  }
  
}
