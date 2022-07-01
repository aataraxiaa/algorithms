//
//  QuickSortTests.swift
//
//
//  Created by Pete Smith on 23/10/2021.
//

import XCTest
@testable import Algorithms

final class QuickSortTests: XCTestCase {

    func testQuickSortBestCase() {
        // given
        var input = [1,2,3,4,5]
        let expected = [1,2,3,4,5]

        // when
        input.quickSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testQuickSortWorstCase() {
        // given
        var input = [5,4,3,2,1]
        let expected = [1,2,3,4,5]

        // when
        input.quickSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testQuickSortMixedCase() {
        // given
        var input = [2,4,3,5,1,7,6]
        let expected = [1,2,3,4,5,6,7]

        // when
        input.quickSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testQuickSortLargeInput() {
        // given
        var input = [20,18,16,14,12,10,8,6,4,2,0]
        let expected = [0,2,4,6,8,10,12,14,16,18,20]

        // when
        input.quickSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testQuickSortSmallInput() {
        // given
        var input = [2,1]
        let expected = [1,2]

        // when
        input.quickSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testQuickSortEmptyInput() {
        // given
        var input = Array<Int>()
        let expected = Array<Int>()

        // when
        input.quickSort()

        // then
        XCTAssertEqual(input, expected)
    }

    func testExample() {
        // given
        var input = [3,10,4,7,6]
        let expected = [3,4,6,7,10]

        // when
        input.quickSort()

        // then
        XCTAssertEqual(input, expected)
    }

}
