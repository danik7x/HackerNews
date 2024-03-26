//
//  DetailView.swift
//  HackerNews
//
//  Created by Daniel Necula on 26.03.24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
            .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
