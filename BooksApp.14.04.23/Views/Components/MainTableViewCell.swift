//
//  MainTableViewCell.swift
//  BooksApp.14.04.23
//
//  Created by zalkarbek on 14/4/23.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    static let reuseId = String(describing: MainTableViewCell.self)
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var publisherLabel: UILabel!
    
    @IBOutlet weak var publisherDateLabel: UILabel!
    
    private var getBooks: VolumeInfo?
    
    func displayBooks(_ items: VolumeInfo) {
        getBooks = items
        titleLabel.text! = items.title
        publisherLabel.text! = items.publisher
        publisherDateLabel.text! = String(items.publishedDate)
      }
    
}
