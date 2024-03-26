//
//  ContentView.swift
//  HackerNews
//
//  Created by Daniel Necula on 26.03.24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    Text("\(post.points)").font(.caption)
                    Text(post.title)
                }
            }
            .navigationTitle("HackerNews")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
