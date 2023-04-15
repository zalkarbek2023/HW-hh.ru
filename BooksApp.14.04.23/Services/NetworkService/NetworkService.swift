//
//  NetworkService.swift
//  BooksApp.14.04.23
//
//  Created by zalkarbek on 14/4/23.
//

import UIKit

final class NetworkService {
    
    static let shared = NetworkService()
    
    private init() { }
    
    func fetchBooks() async throws -> [VolumeInfo] {
        let request = URLRequest(url: Constants.booksUrl)
        let (data, _) = try await URLSession.shared.data(for: request)
        let result: Welcome  = try NetworkHelpers.decode(with: data)
        return result.items.map { $0.volumeInfo }
    }
    
}

