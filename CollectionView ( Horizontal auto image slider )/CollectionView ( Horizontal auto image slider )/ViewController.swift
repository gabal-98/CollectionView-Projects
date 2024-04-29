//
//  ViewController.swift
//  CollectionView ( Horizontal auto image slider )
//
//  Created by robusta on 29/04/2024.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegateFlowLayout , UICollectionViewDelegate , UICollectionViewDataSource{

    @IBOutlet var pageController: UIPageControl!
    @IBOutlet var collectionView: UICollectionView!
    
    var timer: Timer?
    var currentItemIndex = 0
    
    var products = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        pageController.numberOfPages = products.count
        
        startTimer()
    }
    
    func startTimer(){
        
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextImage), userInfo: nil, repeats: true)
    }
    
    @objc func moveToNextImage() {
        currentItemIndex += 1
        if currentItemIndex == products.count{
            currentItemIndex = 0
        }
        collectionView.scrollToItem(at: IndexPath(item: currentItemIndex, section: 0), at: .centeredHorizontally, animated: true)
        pageController.currentPage = currentItemIndex
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        cell.imgView.image = products[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

