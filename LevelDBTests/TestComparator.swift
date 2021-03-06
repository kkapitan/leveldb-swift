/*
* Copyright © 2014, codesplice pty ltd (sam@codesplice.com.au)
*
* Licensed under the terms of the ISC License http://opensource.org/licenses/ISC
*/

import Foundation
import LevelDB

class TestComparator: LevelDB.Comparator {
    var name: String {
        return "test"
    }

    func compare(_ a: LevelDB.Slice, _ b: LevelDB.Slice) -> ComparisonResult {
        let string1 = String(data: a.data(), encoding: .utf8)!
        let string2 = String(data: b.data(), encoding: .utf8)!
        return string1.compare(string2)
    }
}
