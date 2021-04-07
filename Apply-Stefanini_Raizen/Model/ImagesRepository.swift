//
//  PostsRepository.swift
//  Apply-Stefanini_Raizen
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import Foundation
import SwiftUI

class ImagesRepository: ObservableObject {
    @Published var images = [Image]()

    init() {
        let fetchingData = FetchingData()
        fetchingData.getImages { images in
            self.images = images
        }
    }
}
