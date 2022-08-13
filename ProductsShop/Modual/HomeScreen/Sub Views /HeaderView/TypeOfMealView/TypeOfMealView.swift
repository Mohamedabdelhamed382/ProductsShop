//
//  TypeOfMealView.swift
//  ProductsShop
//
//  Created by MohamedAbdelhamed on 05/08/2022.
//

import UIKit

class TypeOfMealView: UIView {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    let typeOfMealView = ["All","Plates","Hot Drinks","Iced Coffee"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        nibSetup()
    }
    
    private func nibSetup() {
        Bundle.main.loadNibNamed("\(TypeOfMealView.self)", owner: self, options: nil)
        guard let contentView = contentView else { return }
        contentView.frame = self.bounds
        addSubview(contentView)
        setupUI()
    }
}

extension TypeOfMealView {
    
    private func setupUI() {
        registerCollectionViewCell()
        setupCollectionViewLayout()
    }
    
    private func registerCollectionViewCell() {
        
        let typeOfMealCellNib = UINib(nibName: "\(TypeOfMealCell.self)", bundle: nil)
        collectionView.register(typeOfMealCellNib, forCellWithReuseIdentifier: "\(TypeOfMealCell.self)")
        
    }
    
    private func setupCollectionViewLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 43
        layout.minimumInteritemSpacing = 43
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 19, bottom: 0, right: 0)
        layout.itemSize = UICollectionViewFlowLayout.automaticSize
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        collectionView.setCollectionViewLayout(layout, animated: false)
    }
    
}

extension TypeOfMealView: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return typeOfMealView.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(TypeOfMealCell.self)", for: indexPath) as? TypeOfMealCell ?? TypeOfMealCell()
        cell.typeofMealTitleLabel.text = typeOfMealView[indexPath.row]
        return cell
    }
 
}
