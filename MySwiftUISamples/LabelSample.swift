//
//  LabelSample.swift
//  SwiftUI_Samples
//
//  Created by Martin Sheng on 2021/4/5.
//

import SwiftUI

struct LabelSample: View {
    var body: some View {
      VStack {
        // Image from SF Symbol
        Label("Learn Swift1", systemImage: "swift")
          .font(.title)
          .foregroundColor(.red)
          .frame(width: 300, height: 40, alignment: .bottomLeading)
        
        // Image from app bundle
        Label("Learn SwiftUI", image: "swiftui-96x96")
        
        // With two @ViewBuilder closures
        Label{
          Text("Learn Swift2")
            .font(.title2)  
            .foregroundColor(.green)
        }icon:{
          Image(systemName: "swift")
        }
      }
    }
}

struct LabelSample_Previews: PreviewProvider {
    static var previews: some View {
        LabelSample()
    }
}
