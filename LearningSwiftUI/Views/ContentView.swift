//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Chuck Perdue on 8/14/20.
//  Copyright © 2020 SycloneFX, LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  init(){
    UITableView.appearance().backgroundColor = .clear
  }
  
  @State var leadIsPresented = false
  @State var trailIsPresented = false
  
  var body: some View {
    NavigationView {
      VStack{
        Form{
          Section(header: Text("Version").font(.headline)) {
            List {
              HStack {
                Text("Swift: ").font(.body).bold()
                Text("5.2").font(.body)
              }
            }
          }
          Section(header: Text("Random Views").font(.headline)) {
            NavigationLink(destination: DetailView()) {
              Text("Detail View")
                .foregroundColor(Color("textColor"))
            }
            NavigationLink(destination: ImageView()) {
              Text("Image View")
                .foregroundColor(Color("textColor"))
            }
          }
        }
      }
      .navigationBarTitle("Main View", displayMode: .large)
      .navigationBarItems(leading: Button(action: {
        self.leadIsPresented = true
      }){
        Image(systemName: "person.circle").imageScale(.large)
      }.sheet(isPresented: $leadIsPresented) {
        LeadView()
      },
      trailing: Button(action: {
        self.trailIsPresented = true
      }){
        Text("Edit").font(.headline)
      }.sheet(isPresented: $trailIsPresented) {
        TrailView()
      })
      //.preferredColorScheme(.light)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView()
  }
}

struct LeadView: View {
  var body: some View {
    Image(systemName: "person.circle").imageScale(.large)
  }
}

struct TrailView: View {
  var body: some View {
    Text("Edit")
  }
}



