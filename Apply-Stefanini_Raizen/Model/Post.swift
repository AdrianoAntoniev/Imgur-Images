//
//  Post.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import Foundation

struct Post: Codable {
    let link: String
    let images: [Image]
    
    struct Image: Codable {
        let description: String
        let views: Int
        let link: String
    }
}
