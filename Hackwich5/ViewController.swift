//
//  ViewController.swift
//  Hackwich5
//
//  Created by Stephan on 10/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    var currentIndex = 0
    
    var favoriteFoodsArray = ["Acai Bowl", "Empanada", "Pao de Queijo", "Malasada", "Savory stuff with pesto, loads of pesto"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.topLabel.text = "My Favorite Foods"
        
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
    }


}

