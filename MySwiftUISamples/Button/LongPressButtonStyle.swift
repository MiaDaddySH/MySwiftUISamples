//
//  LongPressButtonStyle.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 2021/4/6.
//

import SwiftUI

//除了一般的ButtonStyle的接口之外，SwiftUI还提供了PrimitiveButtonStyle以供用户来自定义。
//当我们想要自定义
struct LongPressButtonStyle: PrimitiveButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration
      .label
      .gesture(
        LongPressGesture()
          .onEnded { _ in configuration.trigger() }
      )
  }
}
