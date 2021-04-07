//
//  PostsModel.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import Foundation

struct Image: Hashable {
    let description: String
    let views: Int
    let imageLink: String
            
    init(description: String, views: Int, imageLink: String) {
        self.description = description
        self.views = views
        self.imageLink = imageLink
    }
}

