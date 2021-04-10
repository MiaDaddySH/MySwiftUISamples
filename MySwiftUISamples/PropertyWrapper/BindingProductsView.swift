//
//  BindingProductsView.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 2021/4/10.
//

import SwiftUI

/*
 @Binding提供对值类型的引用。有时，我们需要让子视图可以访问我们的视图状态。
 但是我们不能简单地传递该值，因为它是一个值类型，而Swift将传递该值的副本。
 这是我们可以使用@Binding Property Wrapper的地方。
 
 我们使用@Binding在FilterView内标记showFavorited属性。
 我们还使用$来传递绑定引用，因为如果没有$，Swift将传递值的副本而不是传递可绑定的引用。
 FilterView可以读取和写入ProductsView的showFavorited属性的值。
 一旦FilterView更改showFavorited属性的值，SwiftUI将重新创建ProductsView以及FilterView。
 */

struct FilterView: View {
  @Binding var showFavorited: Bool
  
  var body: some View {
    Toggle(isOn: $showFavorited) {
      Text("Change filter")
    }
  }
}

struct BindingProductsView: View {
  let products: [Product] = [
    Product(id: 1, title: "Apple", isFavorited: true),
    Product(id: 2, title: "Orange", isFavorited: false),
    Product(id: 3, title: "Banana", isFavorited: true),
    Product(id: 4, title: "Watermelon", isFavorited: false),
    Product(id: 5, title: "Stawberry", isFavorited: true),
  ]
  
  @State private var showFavorited: Bool = false
  
  var body: some View {
    VStack {
      FilterView(showFavorited: $showFavorited)
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

struct BindingProductsView_Previews: PreviewProvider {
  static var previews: some View {
    BindingProductsView()
  }
}
