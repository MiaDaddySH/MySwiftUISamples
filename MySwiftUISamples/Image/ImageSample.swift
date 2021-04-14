//
//  ImageSample.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 2021/4/13.
//

import SwiftUI

/**
 在开始Image例子之前，我把可以找一张照片放入我们项目的Assets里面。
 */

struct ImageSample: View {
  var body: some View {
    ScrollView {
      /**
       1. 基础
       直接调用这个图片的名字。平时写代码挺无聊的，大家自己找找乐趣。我找了一张很性感的照片。
       */
      Image("onePiece")
      
      /**
       2. 添加Modifier
       当然我们可以添加Modifier来给照片各种限定，也就是修饰。
       */
      Image("onePiece").border(Color.orange).frame(width: 300, height: 300).border(Color.blue)
      
      /**
       2. 改变尺寸
       我们通过resizable来修改图片的尺寸。也可以在后面添加scaledToFit，或scaledToFill等等。
       */
      Image("onePiece")
        .resizable()
      
      Image("onePiece")
        .resizable()
        .scaledToFit()
    }
  }
}

struct ImageSample_Previews: PreviewProvider {
  static var previews: some View {
    ImageSample()
  }
}
