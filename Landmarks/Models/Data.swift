//
//  Data.swift
//  Landmarks
//
//  Created by 陈晨晖 on 2020/7/25.
//  Copyright © 2020 sunner. All rights reserved.
//

import UIKit
import SwiftUI
import CoreLocation

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("could not find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("could not load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("could not parse \(filename) as \(T.self): \n\(error)")
    }
}

final class ImageStore {
    typealias _ImageDictionary = [String: CGImage]
    fileprivate var images: _ImageDictionary = [:]
    
    fileprivate static var scale = 2
    
    func image(name: String) -> Image {
        let index = images.index(after: <#T##Dictionary<String, CGImage>.Index#>)
        
    }
    
    fileprivate func _guaranteeImage(name: String) -> _ImageDictionary.Index {
        if let index = images.index(forKey: name) { return index }
        
        images[name] = ImageStore
    }
}


