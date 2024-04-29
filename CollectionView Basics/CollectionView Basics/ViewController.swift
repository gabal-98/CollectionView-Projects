//
//  ViewController.swift
//  CollectionView Basics
//
//  Created by robusta on 29/04/2024.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{

    @IBOutlet var collectionView: UICollectionView!
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        products.append(Product(image: UIImage(named: "img_apple")!, price: 213))
        products.append(Product(image: UIImage(named: "img_banana")!, price: 213))
        products.append(Product(image: UIImage(named: "img_lemon")!, price: 213))
        products.append(Product(image: UIImage(named: "img_mango")!, price: 213))
        products.append(Product(image: UIImage(named: "img_orange")!, price: 213))
        products.append(Product(image: UIImage(named: "img_papaya")!, price: 213))
        products.append(Product(image: UIImage(named: "img_apple")!, price: 213))
        products.append(Product(image: UIImage(named: "img_banana")!, price: 213))
        products.append(Product(image: UIImage(named: "img_lemon")!, price: 213))
        products.append(Product(image: UIImage(named: "img_mango")!, price: 213))
        products.append(Product(image: UIImage(named: "img_orange")!, price: 213))
        products.append(Product(image: UIImage(named: "img_papaya")!, price: 213))
        products.append(Product(image: UIImage(named: "img_apple")!, price: 213))
        products.append(Product(image: UIImage(named: "img_banana")!, price: 213))
        products.append(Product(image: UIImage(named: "img_lemon")!, price: 213))
        products.append(Product(image: UIImage(named: "img_mango")!, price: 213))
        products.append(Product(image: UIImage(named: "img_orange")!, price: 213))
        products.append(Product(image: UIImage(named: "img_papaya")!, price: 213))
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! productCollectionViewCell
        let product = products[indexPath.row]
        cell.configure(photo: product.image, price: product.price)
        cell.backgroundColor = .yellow
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width * 0.4, height: view.frame.size.width * 0.3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 5, bottom: 1, right: 5)
    }
}

struct Product {
    
    let image: UIImage
    let price: Int
}

