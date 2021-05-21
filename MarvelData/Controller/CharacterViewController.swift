//
//  CharacterViewController.swift
//  MarvelData
//
//  Created by user191307 on 5/21/21.
//

import UIKit


class CharacterViewController: UIViewController{
    
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var characterImg: UIImageView!
    @IBOutlet weak var characterDescription: UITextView!
    
    var name = ""
    var url = ""
    var descript = ""
    
    override func viewDidLoad() {
        
        characterName.text = name
        setImage(from: url)
        characterDescription.text = descript
        super.viewDidLoad()
        }
    
    
    func setImage(from url: String) {
        guard let imageURL = URL(string: url) else { return }

        DispatchQueue.global().async {
            guard let imageData = try? Data(contentsOf: imageURL) else { return }

            let image = UIImage(data: imageData)
            DispatchQueue.main.async {
                self.characterImg.image = image
            }
        }
    }
    
}
