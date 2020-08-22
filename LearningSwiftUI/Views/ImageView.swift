//
//  ImageView.swift
//  LearningSwiftUI
//
//  Created by Chuck Perdue on 8/21/20.
//  Copyright © 2020 SycloneFX, LLC. All rights reserved.
//

import SwiftUI

struct ImageView: View {
  @State var images: [Image]?
  
  var body: some View {
    VStack {
      Text("Images").onAppear { self.loadImages() }
      
      if images != nil {
        ForEach(0 ..< images!.count) { value in
          //self.images![value].imageScale(.large).padding()
          self.images![value].resizable().scaledToFit().padding()
        }
      }
      Spacer()
    }
    .navigationBarTitle("Image View", displayMode: .inline)
  }
  
  func loadImages() {
    let imgArray = [
      Image(systemName: "paperplane.fill"),
      Image(systemName: "paintbrush.fill"),
      Image(systemName: "car.fill")
    ]
    images = imgArray
  }
}

struct ImageView_Previews: PreviewProvider {
  static var previews: some View {
    ImageView()
  }
}
