//
//  UINavigationControllerExtension.swift
//  LearningSwiftUI
//
//  Created by Chuck Perdue on 8/21/20.
//  Copyright © 2020 SycloneFX, LLC. All rights reserved.
//

import SwiftUI

extension UINavigationController {
  override open func viewDidLoad() {
    super.viewDidLoad()

    let attr: [NSAttributedString.Key: Any] = [
      .foregroundColor: UIColor(named: "textNavBarColor") ?? Color.primary,
    ]
    
    
    let standard = UINavigationBarAppearance()
    standard.backgroundColor = UIColor(named: "navBarColor") //When you scroll or you have title (small one)
    standard.titleTextAttributes = attr
    standard.largeTitleTextAttributes = attr
    
//    let compact = UINavigationBarAppearance()
//    compact.backgroundColor = UIColor(named: "navBarColor") //compact-height
//    compact.titleTextAttributes = attr
//    compact.largeTitleTextAttributes = attr
//
//    let scrollEdge = UINavigationBarAppearance()
//    scrollEdge.backgroundColor = UIColor(named: "navBarColor") //When you have large title
//    scrollEdge.titleTextAttributes = attr
//    scrollEdge.largeTitleTextAttributes = attr
      
    navigationBar.standardAppearance = standard
    navigationBar.compactAppearance = standard
    navigationBar.scrollEdgeAppearance = standard
    
//    navigationItem.standardAppearance = standard
//    navigationItem.compactAppearance = compact
//    navigationItem.scrollEdgeAppearance = scrollEdge
    
    navigationBar.tintColor = UIColor(named: "tintColor")
 }
}
