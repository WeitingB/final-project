//
//  ContentView.swift
//  SwiftUIMovieDb
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Login()
                .tabItem{
                    VStack {
                        Image(systemName: "")
                        Text("Login")
                    }
                }
            MovieListView()
                .tabItem {
                    VStack {
                        Image(systemName: "tv")
                        Text("Movies")
                    }
            }
            .tag(0)
            
            MovieSearchView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }
            .tag(1)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
