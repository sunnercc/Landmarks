//
//  ContentView.swift
//  Landmarks
//
//  Created by 陈晨晖 on 2020/7/22.
//  Copyright © 2020 sunner. All rights reserved.
//

import SwiftUI

struct ContentViewLandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 400)
            CircleImage()
                .offset(y: -60)
                .padding(.bottom, -60)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.leading)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                    .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentViewLandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewLandmarkDetail()
    }
}
