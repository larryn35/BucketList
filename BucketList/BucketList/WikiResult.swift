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

struct Page: Codable {
    let pageid: Int
    let title: String
    let terms: [String: [String]]?
}
