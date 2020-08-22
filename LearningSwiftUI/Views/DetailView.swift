//
//  DetailView.swift
//  LearningSwiftUI
//
//  Created by Chuck Perdue on 8/14/20.
//  Copyright © 2020 SycloneFX, LLC. All rights reserved.
//

import SwiftUI

struct DetailView: View {
  var body: some View {
  Text("This is the detail view. Well its not really that detailed, but it can be.")
    .navigationBarTitle("Detail View", displayMode: .inline).padding()
  }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
