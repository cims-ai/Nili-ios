//
//  ContentView.swift
//  Nili
//
//  Created by Studio Q on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = true
    @State private var error: Error? = nil
    let url: URL? = URL(string: "https://nili.azurewebsites.net/")!
    
    var body: some View {
        ZStack {
                    if let error = error {
                        Text(error.localizedDescription)
                            .foregroundColor(.pink)
                    } else if let url = url {
                        WebView(url: url,
                                                   isLoading: $isLoading,
                                                   error: $error)
                             .edgesIgnoringSafeArea(.all)
                        if isLoading {
                            ProgressView()
                        }
                    } else {
                        Text("Sorry, we could not load the Nili APP.")
                    }

                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
