//
//  StateProductsView.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 2021/4/10.
//

import SwiftUI

struct ProductsView: View {
  let products: [Product] = [
    Product(id: 1, title: "Apple", isFavorited: true),
    Product(id: 2, title: "Orange", isFavorited: false),
    Product(id: 3, title: "Banana", isFavorited: true),
    Product(id: 4, title: "Watermelon", isFavorited: false),
    Product(id: 5, title: "Stawberry", isFavorited: true),
  ]
  
  /*
   @State是一个Property Wrapper，可用于描述View的状态.
   SwiftUI会将其存储在View结构之外的特殊内部存储器中。
   只有相关的视图可以访问它。
   @State属性的值更改后，SwiftUI就会重新构建View来保持更新。这是一个简单的例子。
   */
  
  /*
   让我们看一下这个例子。
   当这里的showFavorited发生改变了之后，整个product的list就发生了更新。
   */
  
  @State private var showFavorited: Bool = false
  
  var body: some View {
    VStack {
      Button(
        action: { self.showFavorited.toggle() },
        label: { Text("Switch favorite") }
      )
      .foregroundColor(.yellow)
      .font(.title)
      
      List{
        ForEach(products) { product in
          if !self.showFavorited || product.isFavorited {
            HStack{
              Text(product.title)
              Spacer()
              Text(product.isFavorited ? "favorite" : "unfavorite")
            }
          }
        }
      }
    }
  }
}

struct ProductsView_Previews: PreviewProvider {
  static var previews: some View {
    ProductsView()
  }
}


