//
//  DetailsImageView.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct DetailsImageView: View {
    let image: Image
    
    var body: some View {
        VStack {
            WebImage(url: URL(string: image.imageLink))
                .resizable()
                .scaledToFit()
                .shadow(color: .blue, radius: 5)
                        
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Description: \(image.description)")
                        .font(.footnote)
                    Text("Views: \(image.views)")
                        .font(.footnote)
                }
                
                Spacer()
            }
            
        }
        .padding(20)
    }
}

struct DetailsImageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsImageView(image: Image(description: "blank", views: 0, imageLink: "blank"))
    }
}
