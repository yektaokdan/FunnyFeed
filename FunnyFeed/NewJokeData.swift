//
//  NewJokeData.swift
//  FunnyFeed
//
//  Created by yekta on 28.02.2024.
//

import Foundation
struct Jokes:Identifiable, Codable {
    let categories: [String]
    let createdAt: String
    let iconURL: String
    let id, updatedAt: String
    let url: String
    let value: String

    enum CodingKeys: String, CodingKey {
        case categories
        case createdAt = "created_at"
        case iconURL = "icon_url"
        case id
        case updatedAt = "updated_at"
        case url, value
    }
}
