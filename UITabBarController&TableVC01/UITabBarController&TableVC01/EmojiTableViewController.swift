//
//  EmojiTableViewController.swift
//  UITabBarController&TableVC01
//
//  Created by Petro Onishchuk on 7/8/21.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var allEmoji = [Emoji]()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(EmojiTableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allEmoji.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! EmojiTableViewCell

        cell.labelForText.text = allEmoji[indexPath.row].name.capitalizingFirstLetter()
        cell.labelForEmoji.text = allEmoji[indexPath.row].symbol

        return cell
    }
    

    
}


extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}

