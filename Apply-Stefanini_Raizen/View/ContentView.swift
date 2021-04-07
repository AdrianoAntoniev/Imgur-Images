//
//  ContentView.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    @ObservedObject var imagesRepository = ImagesRepository()
    private let gridLayout = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridLayout) {
                ForEach(imagesRepository.images, id: \.self) { image in
                    ImageView(urlImage: image.imageLink)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
