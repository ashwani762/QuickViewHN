//
//  Item.swift
//  TinyHN WatchKit Extension
//
//  Created by Ashwani Kumar on 21/03/22.
//

import Foundation

import Foundation

struct Item: Identifiable, Codable {
    let id: Int
    let deleted: Bool?
    let type: String
    let by: String?
    let time: Int
    var text: String?
    let dead: Bool?
    let parent: Int?
    let kids: [Int]?
    let url: String?
    let score: Int?
    let title: String?
    let descendants: Int?

}
