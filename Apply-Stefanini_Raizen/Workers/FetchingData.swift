//
//  FetchingData.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import Foundation
import SwiftUI
import Alamofire

class FetchingData {
    func getImages(completion: @escaping ([Image]) -> Void) {
        let headers: HTTPHeaders = [.contentType("application/json"),
                                    .authorization("Client-ID 0093d54ab7d0851")]
        let request = AF.request("https://api.imgur.com/3/gallery/hot/viral/day/0",
                                 headers: headers)
                
        request.responseDecodable(of: PostsData.self) { response in
            switch response.result {
            case .success:
                var images = [Image]()
                
                if let data = response.value {
                    for postData in data.data {
                        if let imagesData = postData.images {
                            for image in imagesData {
                                if !(image.imageLink.contains("mp4") || image.imageLink.contains("gif")) {
                                    images.append(Image(description: image.description ?? "No descriptions",
                                                        views: image.views,
                                                        imageLink: image.imageLink))
                                    
                                }                                                                
                            }
                        }
                    }
                    completion(images)
                }
            case .failure:
                if let error = response.error {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
}
