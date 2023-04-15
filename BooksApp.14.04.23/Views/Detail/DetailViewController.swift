//
//  DetailViewController.swift
//  BooksApp.14.04.23
//
//  Created by zalkarbek on 14/4/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    lazy var detailText: UILabel = {
       let label = UILabel()
        label.text = "ngnvbnv"
        label.numberOfLines = 9
        label.textAlignment =  .left
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        
        view.addSubview(detailText)
        detailText.translatesAutoresizingMaskIntoConstraints = false
        detailText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        detailText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 10).isActive = true
        detailText.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        detailText.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }

}
