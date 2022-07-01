//
//  SelectionSortTests.swift
//
//
//  Created by Pete Smith on 09/10/2021.
//

import XCTest
@testable import Algorithms

final class SelectionSortTests: XCTestCase {

    func testSelectionSortBestCase() {
        // given
        var input = [1,2,3,4,5]
        let expected = [1,2,3,4,5]

        // when
        input.selectionSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testSelectionSortWorstCase() {
        // given
        var input = [5,4,3,2,1]
        let expected = [1,2,3,4,5]

        // when
        input.selectionSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testSelectionSortMixedCase() {
        // given
        var input = [2,4,3,5,1,7,6]
        let expected = [1,2,3,4,5,6,7]

        // when
        input.selectionSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testSelectionSortLargeInput() {
        // given
        var input = [20,18,16,14,12,10,8,6,4,2,0]
        let expected = [0,2,4,6,8,10,12,14,16,18,20]

        // when
        input.selectionSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testSelectionSortSmallInput() {
        // given
        var input = [2,1]
        let expected = [1,2]

        // when
        input.selectionSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testSelectionSortEmptyInput() {
        // given
        var input = Array<Int>()
        let expected = Array<Int>()

        // when
        input.selectionSort()

        // then
        XCTAssertEqual(input, expected)
    }

}
