//
//  ViewController.swift
//  ArtistBook
//
//  Created by Şükrü Özkoca on 6.05.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var brandName = [String]()
    var brandImage = [UIImage]()
    var brandDetails = [String]()
   
    
    var selectedBrandDetail = ""
    var selectedBrandImage = UIImage()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return brandName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = brandName[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedBrandDetail = brandDetails[indexPath.row]
        selectedBrandImage = brandImage[indexPath.row]
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destination = segue.destination as! SecondViewController
            destination.targetBrandDetail = selectedBrandDetail
            destination.targetBrandImage = selectedBrandImage
        }
    }
    
    

  
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MARKALAR"
        tableView.dataSource = self
        tableView.delegate = self
        
        brandName.append("Fiat")
        brandName.append("Renault")
        brandName.append("Ford")
        
        brandImage.append(UIImage(named: "fiat")!)
        brandImage.append(UIImage(named: "renault")!)
        brandImage.append(UIImage(named: "ford")!)
        
        brandDetails.append("Fiat Türkiye Resmi Distribütör")
        brandDetails.append("Renault Türkiye Resmi Distribütör")
        brandDetails.append("Ford-Otosan Türkiye Resmi Distribütör")
        
        
        
        
    }


}

