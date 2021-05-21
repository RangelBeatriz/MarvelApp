//
//  Extension ViewController.swift
//  MarvelData
//
//  Created by user191307 on 5/21/21.
//

import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "herocell", for: indexPath)
        
        let character = characters[indexPath.row]
        
        cell.textLabel?.text = character.name
        
        return cell
    }
    
    
}
