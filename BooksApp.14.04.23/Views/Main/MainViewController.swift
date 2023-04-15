//
//  ViewController.swift
//  BooksApp.14.04.23
//
//  Created by zalkarbek on 14/4/23.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let mainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureMainTableView()
        fetchBooks()
    }
    
    private func configureMainTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(
            UINib(nibName: String(describing: MainTableViewCell.self), bundle: nil),
            forCellReuseIdentifier: MainTableViewCell.reuseId)
    }
    
    private func fetchBooks() {
        Task {
            do {
                mainViewModel.books = try await mainViewModel.fetchBooks()
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print("Error \(error.localizedDescription)")
            }
        }
    }


}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainViewModel.books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: MainTableViewCell.reuseId,
            for: indexPath) as? MainTableViewCell else { fatalError() }
        
        let books = mainViewModel.books[indexPath.row]
        cell.displayBooks(books)
        return cell
    }
    
    
}

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.detailText.text! = mainViewModel.books[indexPath.row].description
        navigationController?.pushViewController(vc, animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
