//
//  HomeScreenViewController.swift
//  ProductsShop
//
//  Created by MohamedAbdelhamed on 04/08/2022.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var views: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionViewCell()
    }
    
    private func registerCollectionViewCell() {
        let productItemCellCollectionViewCellNib = UINib(nibName: "\(ProductItemCellCollectionViewCell.self)", bundle: nil)
        collectionView.register(productItemCellCollectionViewCellNib, forCellWithReuseIdentifier: "\(ProductItemCellCollectionViewCell.self)")
    }
}

extension HomeScreenViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(ProductItemCellCollectionViewCell.self)", for: indexPath) as? ProductItemCellCollectionViewCell ?? ProductItemCellCollectionViewCell()
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width / 2) - 6 , height: 245)
       }
}
