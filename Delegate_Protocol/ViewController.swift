//
//  ViewController.swift
//  Delegate_Protocol
//
//  Created by Jonathan Grajkowski on 2019-01-26.
//  Copyright © 2019 Jonathan Grajkowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var teamImage: UIImageView!
    @IBOutlet weak var playerName: UITextView!
    
    @IBAction func chooseTeamTapped(_ sender: Any) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "TeamSelectionViewController") as! TeamSelectionViewController
        VC.delegate = self
        present(VC, animated: true,completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}
    extension ViewController: TeamSelectionDelegate{
        func didChooseTeam(image: UIImage, name: String) {
            teamImage.image = image
            playerName.text = name
        }
    }


