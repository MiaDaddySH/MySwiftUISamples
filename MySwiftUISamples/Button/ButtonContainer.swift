//
//  ButtonContainer.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 2021/4/6.
//

import SwiftUI

struct ButtonContainer: View {
  var body: some View {
    // 这里我们把FilledButtonStyle同时应用到了Container里面的三个按钮上面。这样可以节省不少代码。
    // 如果在第二个按钮提前添加了其他的button style，那么后加的不起作用。
    Container()
      .accentColor(.orange)
      .buttonStyle(FilledButtonStyle())
  }
}

struct Container: View {
  var body: some View {
    HStack(spacing: 16) {
      Button("Button 1") {
        print("Click Button 1")
      }
      
      Button("Button 2") {
        print("Click Button 2")
      }.buttonStyle(OutlineButtonStyle())
      
      Button("Button 3") {
        print("Click Button 3")
      }
    }
  }
}

struct ButtonContainer_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContainer()
    }
}
