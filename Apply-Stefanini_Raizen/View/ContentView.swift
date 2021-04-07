//
//  ContentView.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var imagesRepository = ImagesRepository()
    
    var body: some View {
        ForEach(imagesRepository.images, id: \.self) { image in
            Text(image.imageLink)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
