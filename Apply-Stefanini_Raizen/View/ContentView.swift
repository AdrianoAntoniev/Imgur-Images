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
    private let gridLayout = [GridItem(.flexible(minimum: 10)),
                              GridItem(.flexible(minimum: 10)),
                              GridItem(.flexible(minimum: 10)),
                              GridItem(.flexible(minimum: 10))]
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout, spacing: 10) {
                    ForEach(imagesRepository.images, id: \.self) { image in
                        ImageView(image: image)
                    }
                }
                .padding(10)
            }
            .navigationBarTitle(Text("Imgur Images"), displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
