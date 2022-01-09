//
//  BooksViewController.swift
//  UITableView&UIViewController01
//
//  Created by Petro Onishchuk on 1/9/22.
//

import UIKit

class BooksViewController: UIViewController {
    
    var booksTableView: UITableView!
    var bookFormAlert: UIAlertController!
    
    let numbers = [1, 3, 5, 10, 9, 11, 20]
    var allBooks = [Book]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  view.backgroundColor = .red
        // Do any additional setup after loading the view.
        
        title = "UITableView & UIViewController"
        setupBooksTableView()
        setupBookFormAlert()
        addBarButtonItems()
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
    
    // MARK: - bookFormAlert
    func setupBookFormAlert() {
        bookFormAlert = UIAlertController(title: "Add a New Book", message: "Fill this form for create a new Book", preferredStyle: .alert)
        
        bookFormAlert.addTextField { titleTextField in
            titleTextField.placeholder = "Book Title"
        }
        
        bookFormAlert.addTextField { authorTextField in
            authorTextField.placeholder = "Author of Book"
        }
        
        bookFormAlert.addTextField { publicationDateTextField in
            publicationDateTextField.placeholder = "Publication Date"
        }
        
        let addAction = UIAlertAction(title: "Add Book", style: .default) { [weak self]_ in
            // create a new Book
            self?.createNewBook()
        }
        bookFormAlert.addAction(addAction)
    }
    
    //MARK: - create New Book
    func createNewBook() {
        let bookTitle = self.bookFormAlert.textFields?[0].text ?? "Title Unknown"
        
        let authorOfBook = self.bookFormAlert.textFields?[1].text ?? "Author Unknown"
        
        let publicationDate = self.bookFormAlert.textFields?[2].text ?? "Date Unknown"
        
        let newBook = Book(title: bookTitle, author: authorOfBook, publicationDate: publicationDate)
        allBooks.append(newBook)
        cleanTextFields()
        booksTableView.reloadData()
    }
    
    //MARK: - cleanTextFields
    func cleanTextFields() {
        let _ = bookFormAlert.textFields?.map({ textField in
            textField.text = ""
        })
    }
    
    //MARK: - Add barButtonItem
    func addBarButtonItems() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(showAlert))
    }
    @objc func showAlert() {
        present(bookFormAlert, animated: true, completion: nil)
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
        return allBooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = booksTableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
        
        let book = allBooks[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = book.title
        content.image = UIImage(systemName: "book")
        content.secondaryText = "Author: \(book.author). Publication date: \(book.publicationDate)"
        
        cell.contentConfiguration = content
        
        return cell
    }
}
