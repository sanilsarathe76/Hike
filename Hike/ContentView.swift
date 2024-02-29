//
//  ContentView.swift
//  Hike
//
//  Created by macmini41 on 27/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(array: ["image-1", "image-2", "image-3", "image-4", "image-5"], randomImage: "image-1")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
