//
//  ButtonSample.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 2021/4/6.
//

import SwiftUI

struct ButtonSample: View {
  var body: some View {
    VStack{
      //1. 基本的用法
      Button("MyButton 1") {
        print("Click MyButton 1")
      }
      .buttonStyle(LongPressButtonStyle())
      
      //2. 添加了修饰符的按钮
      Button("MyButton 2") {
        print("Click MyButton 2")
      }
      .foregroundColor(.white)
      .padding()
      .background(Color.green)
      .cornerRadius(10)
      .buttonStyle(LongPressButtonStyle())
      
      //到这里都很简单，但是有的时候我们的按钮的样式是相同的，那么我们不希望把代码随便拷来拷去。有两种比较基本的方法可以避免，一个是创建一个Button类，相同样式的Button可以使用同一个类，还有的一个方法是创建一些样式。下面我们来看一下。
      //3. 自定义Button类，有个缺点：无法修改按钮字体的颜色
      FilledButton(title: "MyButton 3") {
        print("Click MyButton 3")
      }
      
      //自定义ButtonStyle，可以解决上面这个缺点。
      Button("MyButton 4") {
        print("Click MyButton 4")
      }
      .buttonStyle(FilledButtonStyle())
      
      //自定义的ButtonStyle还有其他的好处，就是有时候有很多相同样式的按钮在一起，那我们就不需要一一给它们添加样式。可以统一添加。
      
    }
  }
}

struct FilledButton: View {
  let title: String
  let action: () -> Void
  
  var body: some View {
    Button(title, action: action)
      .foregroundColor(.white)
      .padding()
      .background(Color.blue)
      .cornerRadius(12)
  }
}

struct ButtonSample_Previews: PreviewProvider {
  static var previews: some View {
    ButtonSample()
  }
}
