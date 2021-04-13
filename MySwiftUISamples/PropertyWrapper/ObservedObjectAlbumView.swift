//
//  ObservedObjectAlbumView.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 2021/4/10.
//

import SwiftUI
import Combine

struct Episode: Identifiable{
  var id: Int
  var title: String
}

final class PodcastPlayer: ObservableObject {
  @Published private(set) var isPlaying: Bool = false
  
  func play() {
    isPlaying = true
  }
  
  func pause() {
    isPlaying = false
  }
}

struct ObservedObjectAlbumView: View {
  @ObservedObject var player: PodcastPlayer
  let episodes = [
    Episode(id: 1, title: "First episode"),
    Episode(id: 2, title: "Second episode")
  ]
  
  var body: some View {
    List {
      Button(
        action: {
          if self.player.isPlaying {
            self.player.pause()
          } else {
            self.player.play()
          }
        }, label: {
          Text(player.isPlaying ? "Pause": "Play")
        }
      )
      ForEach(episodes) { episode in
        Text(episode.title)
      }
    }
  }
}



struct ObservedObjectAlbumView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectAlbumView(player: PodcastPlayer())
    }
}
