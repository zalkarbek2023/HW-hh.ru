//
//  NetworkHelpers.swift
//  BooksApp.14.04.23
//
//  Created by zalkarbek on 14/4/23.
//

import UIKit

struct NetworkHelpers {
    static func decode<T: Decodable>(with data: Data) throws -> T {
        try JSONDecoder().decode(T.self, from: data)
    }
}

