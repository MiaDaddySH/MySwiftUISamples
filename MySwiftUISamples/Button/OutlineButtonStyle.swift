//
//  OutlineButtonStyle.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 2021/4/6.
//

import SwiftUI

struct OutlineButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration
      .label
      .foregroundColor(configuration.isPressed ? .gray : .orange)
      .padding()
      .background(
        RoundedRectangle(
          cornerRadius: 8,
          style: .continuous
        ).stroke(Color.orange)
      )
  }
}
