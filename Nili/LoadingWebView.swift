//
//  LoadingWebView.swift
//  Nili
//
//  Created by Studio Q on 11/1/23.
//

import SwiftUI

struct LoadingWebView: View {
    @State private var isLoading = true
    @State private var error: Error? = nil
    let url: URL?
    
    var body: some View {
        ZStack {
                  if let url = url {
                    WebView(url: url, isLoading: $isLoading, error: $error)
                        .edgesIgnoringSafeArea(.all)
                    if isLoading {
                        ProgressView()
                    }
                  }
                }
    }
}
