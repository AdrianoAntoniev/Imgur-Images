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
    
    init() {
        let headers: HTTPHeaders = [.contentType("application/json"),
                                        .authorization("Client-ID 0093d54ab7d0851")]
        let request = AF.request("https://api.imgur.com/3/gallery/hot/viral/day/0", headers: headers)
        
        request.responseJSON { response in
            print(response.result)
        }
    }
    
}
