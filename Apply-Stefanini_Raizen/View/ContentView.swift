//
//  ContentView.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var imagesRepository = ImagesRepository()
    private let gridLayout = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    
    var body: some View {
        LazyVGrid(columns: gridLayout) {
            ForEach(imagesRepository.images, id: \.self) { image in
                Text(image.imageLink)
            }
        }
        
//        ScrollView {
//                LazyVStack {
//                    ForEach(urls, id: \.self) { url in
//                        AnimatedImage(url: url)
//                    }
//                }
//            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
