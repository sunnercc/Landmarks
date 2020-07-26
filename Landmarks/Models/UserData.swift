//
//  UserData.swift
//  Landmarks
//
//  Created by sunner on 2020/7/26.
//  Copyright © 2020 sunner. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
