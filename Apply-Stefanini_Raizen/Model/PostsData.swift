//
//  Post.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import Foundation

struct PostsData: Codable {
    let data: [PostData]

    enum CodingKeys: String, CodingKey {
        case data
    }
        
    struct PostData: Codable {
        let postLink: String
        let images: [ImageData]?
        
        enum CodingKeys: String, CodingKey {
            case postLink = "link"
            case images
        }
        
        struct ImageData: Codable {
            let description: String?
            let views: Int
            let imageLink: String
            
            enum CodingKeys: String, CodingKey {
                case description
                case views
                case imageLink = "link"
            }
        }
    }
}

