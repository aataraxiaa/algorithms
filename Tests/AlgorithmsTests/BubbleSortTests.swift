//
//  BubbleSortTests.swift
//  
//
//  Created by Pete Smith on 09/10/2021.
//

import XCTest
@testable import Algorithms

final class BubbleSortTests: XCTestCase {

    func testBubbleSortBestCase() {
        // given
        var input = [1,2,3,4,5]
        let expected = [1,2,3,4,5]

        // when
        input.bubbleSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testBubbleSortWorstCase() {
        // given
        var input = [5,4,3,2,1]
        let expected = [1,2,3,4,5]

        // when
        input.bubbleSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testBubbleSortMixedCase() {
        // given
        var input = [2,4,3,5,1]
        let expected = [1,2,3,4,5]

        // when
        input.bubbleSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testBubbleSortLargeInput() {
        // given
        var input = [20,18,16,14,12,10,8,6,4,2,0]
        let expected = [0,2,4,6,8,10,12,14,16,18,20]

        // when
        input.bubbleSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testBubbleSortSmallInput() {
        // given
        var input = [2,1]
        let expected = [1,2]

        // when
        input.bubbleSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testBubbleSortEmptyInput() {
        // given
        var input = Array<Int>()
        let expected = Array<Int>()

        // when
        input.bubbleSort()

        // then
        XCTAssertEqual(input, expected)
    }

}
