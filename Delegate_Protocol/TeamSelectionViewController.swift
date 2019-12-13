//
//  TeamSelectionViewController.swift
//  Delegate_Protocol
//
//  Created by Jonathan Grajkowski on 2019-01-26.
//  Copyright © 2019 Jonathan Grajkowski. All rights reserved.
//

import UIKit

protocol TeamSelectionDelegate {
    func didChooseTeam(image: UIImage, name: String)
}

class TeamSelectionViewController: UIViewController {

    let image_marner = #imageLiteral(resourceName: "marner")
    let image_pastrnak = #imageLiteral(resourceName: "pastrnak")
    var delegate: TeamSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func bustonButtonTapped(_ sender: UIButton) {
        delegate.didChooseTeam(image: image_pastrnak, name: "David Pastrnak")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func torontoButtonTapped(_ sender: UIButton) {
        delegate.didChooseTeam(image: image_marner, name: "Mitch Marner")
        dismiss(animated: true, completion: nil)
    }
}
