//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Maurice-School on 8/9/18.
//  Copyright © 2018 Maurice-School. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var eightBallImage: UIImageView!
    
    var randomIndex: Int = 0
    var pictureArray: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBAction func askQuestionPressed(_ sender: UIButton) {
        generateRandomImage()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func generateRandomImage() {
        randomIndex = Int (arc4random_uniform(5))
        eightBallImage.image = UIImage(named: pictureArray[randomIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        generateRandomImage()
    }

}

