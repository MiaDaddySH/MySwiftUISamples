//
//  FilledButtonStyle.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 2021/4/6.
//

import SwiftUI

struct FilledButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration
      .label
      .foregroundColor(configuration.isPressed ? .black : .white)
      .padding()
      .background(Color.orange)
      .cornerRadius(12)
  }
}
