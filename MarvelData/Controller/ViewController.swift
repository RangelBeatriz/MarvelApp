//
//  ViewController.swift
//  MarvelData
//
//  Created by user191307 on 5/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableChars: UITableView!
    
    let apiMarvel = MarvelAPI()
    var characters = [Character]()

    override func viewDidLoad() {
        
        tableChars.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apiMarvel.apiRequest()
        apiMarvel.completionHandler { (characters, status, message) in
            if status {
                guard let _characters = characters else{return}
                self.characters = _characters
                self.tableChars.reloadData()
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueId" {
            if let destination = segue.destination as? CharacterViewController {
                let indexPath = self.tableChars.indexPathForSelectedRow
                destination.name = characters[indexPath!.row].name
                destination.url = characters[indexPath!.row].thumbnail.url
                destination.descript = characters[indexPath!.row].description
            }
        }
    }


}

