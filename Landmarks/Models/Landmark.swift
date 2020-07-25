//
//  Landmark.swift
//  Landmarks
//
//  Created by 陈晨晖 on 2020/7/25.
//  Copyright © 2020 sunner. All rights reserved.
//

import SwiftUI

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    var state: String
    var park: String
    var category: Category
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Landmark {
    var image: Image {
        Image("turtlerock")
    }
}
