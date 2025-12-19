//
//  HTMLFormattests.swift
//  TextTable
//
//  Created by Cristian Filipov on 8/13/16.
//
//

import XCTest
@testable import PackageTextTable

private let testStyle = Style.html

class HtmlFormatTests: XCTestCase {

    func testPerformanceExample() {
        self.measure {
            let _ = table.string(for: data, style: testStyle)
        }
    }

    func testTable() {
        let expectedOutput = "" +
            "<table>\n" +
            "    <tr>\n" +
            "        <th style=\"text-align:left;\">Name</th>\n" +
            "        <th style=\"text-align:center;\">Age</th>\n" +
            "        <th style=\"text-align:right;\">Birthday</th>\n" +
            "        <th style=\"text-align:right;\">Notes</th>\n" +
            "        <th style=\"text-align:right;\">Notes</th>\n" +
            "    </tr>\n" +
            "    <tr>\n" +
            "        <td>Alice</td>\n" +
            "        <td>42</td>\n" +
            "        <td>8/14/16</td>\n" +
            "        <td>Lorem ips…</td>\n" +
            "        <td>… rhoncus.</td>\n" +
            "    </tr>\n" +
            "    <tr>\n" +
            "        <td>Bob</td>\n" +
            "        <td>22</td>\n" +
            "        <td>8/14/16</td>\n" +
            "        <td>Nunc vari…</td>\n" +
            "        <td>…enenatis.</td>\n" +
            "    </tr>\n" +
            "    <tr>\n" +
            "        <td>Eve</td>\n" +
            "        <td>142</td>\n" +
            "        <td>8/14/16</td>\n" +
            "        <td>Etiam qui…</td>\n" +
            "        <td>…ulus mus.</td>\n" +
            "    </tr>\n" +
            "</table>\n" +
        ""
        let s = table.string(for: data, style: testStyle)!
        XCTAssertEqual(s, expectedOutput)
        table.print(data, style: testStyle)
    }
    
}
