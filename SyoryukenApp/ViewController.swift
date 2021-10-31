//
//  ViewController.swift
//  SyoryukenApp
//
//  Created by 伴地慶介 on 2021/10/31.
//

import UIKit

class ViewController: UIViewController {

    let image_names = ["attak1", "attak2", "attak3", "attak4", "attak5", "attak6", "attak7", "attak8", "attak9", "attak10", "attak11", "attak12", "attak13", "attak14", "attak15", "attak16", "attak17", "attak18", "attak19", "attak20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: image_names[0])
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func tappedButton(_ sender: Any) {
        imageView.animationImages = animatedImages(for: image_names)
        imageView.animationDuration = 1
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    
    func animatedImages(for image_names: [String]) -> [UIImage] {
        var images:[UIImage] = []
        for image_name in image_names {
            if let image = UIImage(named: image_name) {
                images.append(image)
            }
        }
        return images
    }
    
}

