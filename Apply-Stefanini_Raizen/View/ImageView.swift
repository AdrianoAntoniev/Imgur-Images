//
//  ImageView.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageView: View {
    let urlImage: URL
    
    init(urlImage: String) {
        self.urlImage = URL(string: urlImage)!
    }
    
    var body: some View {
        WebImage(url: urlImage)
            .resizable()
            .frame(width: 100, height: 120)
            .shadow(color: .gray, radius: 5)            
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(urlImage: "test")
    }
}
