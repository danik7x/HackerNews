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
                NavigationLink(destination: Text(post.url).padding()) {
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
//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjor"),
//    Post(id: "3", title: "Buna"),
//    Post(id: "4", title: "Hola"),
//]

#Preview {
    ContentView()
}
