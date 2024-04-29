//
//  ViewController.swift
//  CollectionView inside TableView
//
//  Created by robusta on 30/04/2024.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    var products = [Product]()

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        products.append(Product(title: "Fruits", photos: [UIImage(named: "img_apple")! , UIImage(named: "img_banana")! , UIImage(named: "img_lemon")! , UIImage(named: "img_orange")! ,UIImage(named: "img_papaya")!]))
                        
        products.append(Product(title: "Fruits", photos: [UIImage(named: "img_apple")! , UIImage(named: "img_banana")! , UIImage(named: "img_lemon")! , UIImage(named: "img_orange")! ,UIImage(named: "img_papaya")!]))
                        
        products.append(Product(title: "Fruits", photos: [UIImage(named: "img_apple")! , UIImage(named: "img_banana")! , UIImage(named: "img_lemon")! , UIImage(named: "img_orange")! ,UIImage(named: "img_papaya")!]))
                                        
        products.append(Product(title: "Fruits", photos: [UIImage(named: "img_apple")! , UIImage(named: "img_banana")! , UIImage(named: "img_lemon")! , UIImage(named: "img_orange")! ,UIImage(named: "img_papaya")!]))
                        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        let product = products[indexPath.row]
        cell.productNameLabel.text = product.title
        cell.configureCell(name: product.title, photos: product.photos)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

struct Product {
    
    let title: String
    let photos: [UIImage]
}

