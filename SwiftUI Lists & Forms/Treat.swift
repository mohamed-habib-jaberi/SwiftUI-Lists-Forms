//
//  Treat.swift
//  SwiftUI Lists & Forms
//
//  Created by mohamed  habib on 20/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import Foundation

struct Treat: Identifiable {
  var id = UUID()
  var name: String
  var imageName: String
  var description: String
}

extension Treat {
  static let demoTreats = [
    Treat(name: "Fish Cakes", imageName: "FlyingFish", description: "Lots of fish, lots of cakes!"),
    Treat(name: "Mice Cream", imageName: "MiceCream", description: "Every kitty's favorite flavored Ice Cream"),
    Treat(name: "Croissant", imageName: "Croissant", description: "Seems like cats wouldn't like them, but they do!"),
    Treat(name: "Pancakes", imageName: "PanCakes", description: "They're cakes, but in the shape of a pan")
  ]
}
