//
//  ContentView.swift
//  TinyHN WatchKit Extension
//
//  Created by Ashwani Kumar on 21/03/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            HomeView()
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
