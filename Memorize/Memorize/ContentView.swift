//
//  ContentView.swift
//  Memorize
//
//  Created by An Doan on 6/28/20.
//  Copyright © 2020 minhandoan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      return VStack() {
        ForEach(0..<4) { _ in
          CardView(isFlipped: true)
        }
      }
      .padding()
      .foregroundColor(Color.orange)
      .font(Font.largeTitle)
    }
}


struct CardView: View {
  var isFlipped: Bool
  
  var body: some View {
    return ZStack() {
      if (isFlipped)
      {
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 5.0)
        Text("❤️")
      }
      else {
        RoundedRectangle(cornerRadius: 10.0).fill()
      }
    }
  }
  
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
