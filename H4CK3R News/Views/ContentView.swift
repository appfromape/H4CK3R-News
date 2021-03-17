//
//  ContentView.swift
//  H4CK3R News
//
//  Created by 程式猿 on 2021/3/17.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
            }
            .navigationTitle("H4CK3R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(objectID: "1", points: 10, title: "good boy", url: "http"),
//    Post(objectID: "2", points: 1, title: "bad boy", url: "https")
//]
