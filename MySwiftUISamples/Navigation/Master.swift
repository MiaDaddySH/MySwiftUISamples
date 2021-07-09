//
//  DetailsView.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 07.07.21.
//

import SwiftUI


struct Master: View {
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Details(), tag: 1, selection: $selection) {
                    Button("Press me") {
                        self.selection = 1
                    }
                }
            }.navigationBarTitle("Messages")
        }
    }
}

struct Details: View {
    @Environment(\.presentationMode) var presentation

    var body: some View {
        Group {
            Text("Details")
            Button("pop back") {
                self.presentation.wrappedValue.dismiss()
            }
        }
    }
}
