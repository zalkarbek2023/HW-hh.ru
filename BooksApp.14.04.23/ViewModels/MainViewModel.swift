//
//  MainViewModel.swift
//  BooksApp.14.04.23
//
//  Created by zalkarbek on 14/4/23.
//

import UIKit

class MainViewModel {
    
    private let networkService = NetworkService.shared
    
    var books: [VolumeInfo] = []
    
    func fetchBooks() async throws -> [VolumeInfo] {
        return try await networkService.fetchBooks()
    }
}
