//
//  MasterView.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 07.07.21.
//

import SwiftUI

struct MasterView: View {
    private let messages = [
        "Hello", "How are you?"
    ]

    var body: some View {
        NavigationView {
            List(messages, id: \.self) { message in
                NavigationLink(destination: DetailsView(message: message)) {
                    Text(message)
                }
            }.navigationBarTitle("Messages")
        }
    }
}

struct DetailsView: View {
    let message: String

    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
        }
    }
}

