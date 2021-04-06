//
//  TextFieldSample.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 2021/4/6.
//

import SwiftUI

struct TextFieldSample: View {
  //
  @State private var text1 = ""
  @State private var text2 = ""
  @State private var price = 88
  @State private var text3 = ""
  @State private var text4 = ""
  
  var body: some View {
    VStack(alignment: .center, spacing: 40){
      //1. 基本用法，前面的文本是place holder，后面的绑定变量text是随着用户的输入而更新的。
      TextField("1. please type something...", text: $text1)
      
      /// 2. 这里的TextField带了回调函数,一个是OnEditingChanged，开始编辑和结束编辑的时候,
      /// 也就是光标进入到光标消失的时候会被调用，会返回一个Boolean值，开始的时候是true，
      /// 结束的时候是false；onCommit是在确认的时候，相当于回车的时候被调用。
      /// 输出的顺序是:
      /// Start text editting...
      /// commit
      /// Stop text editting...
      TextField(
        "2. please type something...",
        text: $text2,
        onEditingChanged: { startingEdit in
          if startingEdit {
            print("Start text editting...")
          }else{
            print("Stop text editting...")
          }
        },
        onCommit: { print("commit") }
      )
      
      ///另外一种形式，这里可以设定输入的形式，比如这里我们设定的是价钱形式，用户可以看到
      ///一开始是88元。用户可以再这个基础上面对数字进行修改。
      TextField(
        "3. please type the price...",
        value: $price,
        formatter: NumberFormatter.currency
      )
      
      ///最后还是样式，和所有的控件一样，TextField也有样式。它还有系统提供的样式，
      ///比如下面的RoundedBorderTextFieldStyle。
      ///当然它也可以自定义，和ButtonStyle十分相似。
      TextField("4. please type something...", text: $text3)
        .textFieldStyle(RoundedBorderTextFieldStyle())
      
      TextField("5. please type something...", text: $text4)
        .textFieldStyle(MyTextFieldStyle())
    }
  }
}

struct MyTextFieldStyle: TextFieldStyle {
  func _body(configuration: TextField<_Label>) -> some View {
    configuration
      .padding()
      .border(Color.green)
  }
}

extension NumberFormatter {
  static var currency: NumberFormatter {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.positiveSuffix = "元"
    return formatter
  }
}

struct TextFieldSample_Previews: PreviewProvider {
  static var previews: some View {
    TextFieldSample()
  }
}
