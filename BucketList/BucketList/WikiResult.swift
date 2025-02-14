//
//  Result.swift
//  BucketList
//
//  Created by Larry Nguyen on 9/25/20.
//

import Foundation

struct WikiResult: Codable {
    let query: Query
}

struct Query: Codable {
    let pages: [Int: Page]
}

struct Page: Codable, Comparable {
    let pageid: Int
    let title: String
    let terms: [String: [String]]?
    var description: String {
        terms?["description"]?.first ?? "No further information"
    }
    
    
    static func < (lhs: Page, rhs: Page) -> Bool {
        lhs.title < rhs.title
    }
}

