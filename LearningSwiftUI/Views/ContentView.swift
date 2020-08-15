//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Chuck Perdue on 8/14/20.
//  Copyright © 2020 SycloneFX, LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var leadIsPresented = false
  @State var trailIsPresented = false
  
  var body: some View {
    NavigationView {
      VStack{
        Spacer()
        NavigationLink(destination: DetailView()) {
          Text("Detail View")
        }
        Form{
          Section(header: Text("Version").font(.title)) {
            HStack {
              Text("SwiftUI: ").font(.body).bold()
              Text("5.2").font(.body)
            }
          }
        }
      }
      .navigationBarTitle("Main View", displayMode: .large)
      .navigationBarItems(leading: Button(action: {
        self.leadIsPresented = true
      }){
        Image(systemName: "person.circle").imageScale(.large)
          //.accentColor(Color.white)
      }.sheet(isPresented: $leadIsPresented) {
        LeadView()
      },
      trailing: Button(action: {
        self.trailIsPresented = true
      }){
        Text("Edit").font(.headline)
          //.foregroundColor(Color.white)
      }.sheet(isPresented: $trailIsPresented) {
        TrailView()
      })
      .preferredColorScheme(.light)
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


extension UINavigationController {
  override open func viewDidLoad() {
    super.viewDidLoad()

    let attr: [NSAttributedString.Key: Any] = [
      .foregroundColor: UIColor.white,
    ]
    
    
    let standard = UINavigationBarAppearance()
    standard.backgroundColor = .red //When you scroll or you have title (small one)
    standard.titleTextAttributes = attr
    standard.largeTitleTextAttributes = attr
    
    let compact = UINavigationBarAppearance()
    compact.backgroundColor = .green //compact-height
    compact.titleTextAttributes = attr
    compact.largeTitleTextAttributes = attr
      
    let scrollEdge = UINavigationBarAppearance()
    scrollEdge.backgroundColor = .blue //When you have large title
    scrollEdge.titleTextAttributes = attr
    scrollEdge.largeTitleTextAttributes = attr
      
    navigationBar.standardAppearance = standard
    navigationBar.compactAppearance = compact
    navigationBar.scrollEdgeAppearance = scrollEdge
    
//    navigationItem.standardAppearance = standard
//    navigationItem.compactAppearance = compact
//    navigationItem.scrollEdgeAppearance = scrollEdge
    
    let white = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    navigationBar.tintColor = white
 }
}
