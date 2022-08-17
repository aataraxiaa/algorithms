//
//  MeergeSortTests.swift
//
//
//  Created by Pete Smith on 09/10/2021.
//

import XCTest
@testable import Algorithms

final class MergeSortTests: XCTestCase {

    func testMergeSortBestCase() {
        // given
        var input = [1,2,3,4,5]
        let expected = [1,2,3,4,5]

        // when
        input.mergeSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testMergeSortWorstCase() {
        // given
        var input = [5,4,3,2,1]
        let expected = [1,2,3,4,5]

        // when
        input.mergeSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testMergeSortMixedCase() {
        // given
        var input = [2,4,3,6,5,7,1]
        let expected = [1,2,3,4,5,6,7]

        // when
        input.mergeSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testMergeSortLargeInput() {
        // given
        var input = [20,18,16,14,12,10,8,6,4,2,0]
        let expected = [0,2,4,6,8,10,12,14,16,18,20]

        // when
        input.mergeSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testMergeSortSmallInput() {
        // given
        var input = [2,1]
        let expected = [1,2]

        // when
        input.mergeSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testMergeSortEmptyInput() {
        // given
        var input = Array<Int>()
        let expected = Array<Int>()

        // when
        input.mergeSort()

        // then
        XCTAssertEqual(input, expected)
    }

}
