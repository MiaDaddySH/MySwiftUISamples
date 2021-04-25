//
//  ContentView.swift
//  MySwiftUISamples
//
//  Created by Martin Sheng on 2021/4/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ObservedObjectAlbumView(player: PodcastPlayer())
            .padding()
    }
}

This is my test for jenkins.

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
