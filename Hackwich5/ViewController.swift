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
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    var currentIndex = 0
    
    var favoriteFoodsArray = ["Acai Bowl", "Empanada", "Pao de Queijo", "Malasada", "Savory stuff with pesto, loads of pesto"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.topLabel.text = "My Favorite Foods"
        
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
        
        //Trying somethign out
        buttonLabel.setTitle("Next", for:UIControl.State.normal)

    }

    @IBAction func buttonPressed(_ sender: Any) {
        /*if self.currentIndex < self.favoriteFoodsArray.count {
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Next", for:UIControl.State.normal)
            currentIndex += 1
        } else {
            print("button has been disabled")
            (buttonLabel!).isEnabled=false
        }*/
        
        //Trying something out
        if currentIndex < favoriteFoodsArray.count-2 {
            currentIndex += 1
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
        } else if currentIndex < favoriteFoodsArray.count-1 {
            currentIndex += 1
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Again", for:UIControl.State.normal)
        } else {
            currentIndex = 0
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Next", for:UIControl.State.normal)
        }
    }
    
}
