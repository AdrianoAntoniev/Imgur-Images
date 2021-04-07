//
//  ImageView.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageView: View {
    let image: Image
        
    var body: some View {
        NavigationLink(destination: DetailsImageView(image: self.image)) {
            WebImage(url: URL(string: image.imageLink)!)
            .resizable()
            .frame(height: 100)
            .shadow(color: .blue, radius: 2)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image(description: "blank", views: 0, imageLink: "blank"))
    }
}
