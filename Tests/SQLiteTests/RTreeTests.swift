import XCTest
import SQLite

// swiftlint:disable all
class RTreeTests : XCTestCase {

    func test_create_onVirtualTable_withRTree_createVirtualTableExpression() {
        XCTAssertEqual(
            "CREATE VIRTUAL TABLE \"virtual_table\" USING rtree(\"int64\", \"double\", \"double\")",
            virtualTable.create(.RTree(int64, (double, double)))
        )
        XCTAssertEqual(
            "CREATE VIRTUAL TABLE \"virtual_table\" USING rtree(\"int64\", \"double\", \"double\", \"double\", \"double\")",
            virtualTable.create(.RTree(int64, (double, double), (double, double)))
        )
    }

}
