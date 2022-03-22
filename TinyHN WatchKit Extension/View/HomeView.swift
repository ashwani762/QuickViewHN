//
//  HomeView.swift
//  TinyHN WatchKit Extension
//
//  Created by Ashwani Kumar on 22/03/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var items = TopNewsViewModel()
    
    var body: some View {
        
        VStack {
            if let stories = items.items {
                List(stories) { story in
                    Text(story.title ?? "").fontWeight(.regular)
                }
            }
            else {
                ProgressView()
            }
        }
        .onAppear{
            items.fetchTopStories()
        }
        .navigationTitle("Top News")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
