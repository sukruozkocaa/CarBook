//
//  SecondViewController.swift
//  ArtistBook
//
//  Created by Şükrü Özkoca on 6.05.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var targetBrandDetail = ""
    var targetBrandImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brandLabel.text = targetBrandDetail
        imageView.image = targetBrandImage
        // Do any additional setup after loading the view.
    }

}
