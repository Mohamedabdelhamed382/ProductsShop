//
//  MealsView.swift
//  ProductsShop
//
//  Created by MohamedAbdelhamed on 05/08/2022.
//

import UIKit

class MealsView: UIView {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let typeOfMealView = ["Breakfast","Dinner","Desserts"]
    
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

extension MealsView {
    
    private func setupUI() {
        registerCollectionViewCell()
        //setupCollectionViewLayout()
    }
    
    private func registerCollectionViewCell() {
        
        let mealsViewCellNib = UINib(nibName: "\(MealsViewCell.self)", bundle: nil)
        collectionView.register(mealsViewCellNib, forCellWithReuseIdentifier: "\(MealsViewCell.self)")
    }
    
    private func setupCollectionViewLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 17
        layout.minimumInteritemSpacing = 17
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 19, bottom: 0, right: 0)
        layout.itemSize = UICollectionViewFlowLayout.automaticSize
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        collectionView.setCollectionViewLayout(layout, animated: false)
    }
    
}

extension MealsView: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return typeOfMealView.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(MealsViewCell.self)", for: indexPath) as? MealsViewCell ?? MealsViewCell()
        cell.mealTitleLabel.text = typeOfMealView[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120 , height: 81)
       }
}
