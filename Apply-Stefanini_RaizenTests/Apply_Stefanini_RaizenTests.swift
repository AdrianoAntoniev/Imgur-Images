//
//  Apply_Stefanini_RaizenTests.swift
//  Apply-Stefanini_RaizenTests
//
//  Created by Adriano Rodrigues Vieira on 06/04/21.
//

import XCTest
@testable import Apply_Stefanini_Raizen

class Apply_Stefanini_RaizenTests: XCTestCase {

    override func setUpWithError() throws {}
    override func tearDownWithError() throws {}

    func testFetchingData() throws {
        let sut = FetchingData()
        let expectation = XCTestExpectation(description: "Fetch data from API")
        
        sut.getImages { images in
            XCTAssertFalse(images.isEmpty, "Array is empty")
            expectation.fulfill()
        }        
        
        wait(for: [expectation], timeout: 15)
    }

}
