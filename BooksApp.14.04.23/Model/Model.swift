//
//  Model.swift
//  BooksApp.14.04.23
//
//  Created by zalkarbek on 14/4/23.
//

import UIKit

struct Welcome: Codable {
    let items: [Item]
}

// MARK: - Item
struct Item: Codable {
    let volumeInfo: VolumeInfo
}

struct VolumeInfo: Codable {
    let title: String
    let authors: [String]
    let publisher, publishedDate, description: String
}
