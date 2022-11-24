//
//  ViewController.swift
//  gifDemo
//
//  Created by Darshan Gajera on 24/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    var intIncrease = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        self.callNew(name: intIncrease)
    }
    
    func callNew(name: Int) {
        let (image, duration) = UIImage.gifImageWithName("\(name)")
        imgView.image = image
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(duration)) {
            self.intIncrease += 1
            if self.intIncrease < 4 {
                self.callNew(name: self.intIncrease)
            } else {
                print("denny - load all gif")
            }
        }
    }
}

