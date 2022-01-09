//
//  BooksViewController.swift
//  UITableView&UIViewController01
//
//  Created by Petro Onishchuk on 1/9/22.
//

import UIKit

class BooksViewController: UIViewController {
    
    var booksTableView: UITableView!
    
    let numbers = [1, 3, 5, 10, 9, 11, 20]

    override func viewDidLoad() {
        super.viewDidLoad()
      //  view.backgroundColor = .red
        // Do any additional setup after loading the view.
        
        title = "UITableView & UIViewController"
        setupBooksTableView()
    }
    
    
    
    func setupBooksTableView() {
        booksTableView = UITableView()
        booksTableView.dataSource = self
        booksTableView.delegate = self
        
        booksTableView.register(UITableViewCell.self, forCellReuseIdentifier: "bookCell")
        
        booksTableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(booksTableView)
        
        booksTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        booksTableView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        booksTableView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        booksTableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension BooksViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = booksTableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
        
        let number = numbers[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = "\(number)"
        content.image = UIImage(systemName: "book")
        
        cell.contentConfiguration = content
        return cell
    }
}
